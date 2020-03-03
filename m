Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C0B17717E
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 09:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=10msjy6t5ekelpmwLl+h0FieXlwcB/pHijoNh3D/fd4=; b=pTa9kWHzzzFNj17nLkQEkJBL/N
	yWaNxROXNUCqteYAYcjoXS4rAsPOKVU14NjQMvnlfUlryCp3n0Av8ugDvMZSq8ecqMGIJyL+07K1b
	rVbsvjD/m7ARcUmqGhLvip0UytRLTydJpMfKjirCgTelZ+/Ahd5lNPVL2YHv3zCkSONsiJfz996mq
	QF5ODbt1p9aPrc+9V6EkC/BCY7q0HNRWWnP+fkf8kNID9qjzPkduHfOKJuJvj36ZDmNoQChDUQNNx
	8h6n+ggfT6mZRpsYzl4WYRI2lVTGKzoi+ZsXpVdyYDArikleZy3Qg0Sh4LIONB52ZutizSjg1xRln
	lVKuAWYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j93Cm-0000GS-OG; Tue, 03 Mar 2020 08:47:08 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j93Cj-0000GB-Pj
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 08:47:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id p7so1015657pli.5
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 00:47:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=10msjy6t5ekelpmwLl+h0FieXlwcB/pHijoNh3D/fd4=;
 b=FGcEnuKNaPrGGdBPllfmusOwXCOON/Cgi4Go07bdmaMJ1KtPL2RfRyYR6s+/iqBz5f
 XVMNhmWHbk+n3Ccc8OVXyn6sFR1+gjZZf9zcEODQOfM8ar0Le24ED4Z1+TC4Nnr/rF74
 T0Dxgqbt+zJ4MR+E8mFOcfZSzXkKTRb17s3iH7lsw4DEEc42OvR3jGwN257RYAYU3Unk
 LtuMyYwK2yxYS99tZ+wurmD3ODDTIdHWLBugnxUP2MzCGuTCNwHCnaXdiOcjf/LE3W64
 UFXkkFsi8UHfqx+yJ6qYIFT/pcv/A1esPVj1DlTn5dDefyIh4twOaCBJE56R+JxXxmJc
 9f2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=10msjy6t5ekelpmwLl+h0FieXlwcB/pHijoNh3D/fd4=;
 b=Lye9OIL7WjBqSUHVEfiG8Uxhg9wmZ1ARompnYYsdZuNOQNmjz5vnijkKjHangnbbu4
 ++vJwq5Drm7eFNJlBjFklQHEVBA79bmq0NJU+bUBw6t8mL0UZ0UABE7dGQQNwOgxitHM
 DUOTLmVDxlnvCKqGEPWQUHlbDLXF0wFMW+iNikJ5wyPFirukaSS29m4ckEDyhdoxrEKR
 qZnnB9lbSe+SRzddj0tVfP6HyY6JRl+DuaD0bRizzJvYI/zrAtsml5xV5tz+Ao+r9Vq5
 rtxP0XW4aBGp96V0VKrbdXoOT2kaadIiYfX5B6+M2jBpg5zXh3+piwlmYH4wBMYjjy7d
 SGeA==
X-Gm-Message-State: ANhLgQ0PAvxK+QLwfPAXrbJfTrncjYaXHxd4y9Y+23GAE+JERMFzMtCp
 kq5xNArmC4ugqQfUtlJdRgfM/A==
X-Google-Smtp-Source: ADFU+vuv2bjEfMr3F5uM7po57DVZsSXSb7F/AwEPDSu2e6tRem4u/H17BOrNNX1KpUDgskzagfixSg==
X-Received: by 2002:a17:902:8b89:: with SMTP id
 ay9mr3182043plb.309.1583225224700; 
 Tue, 03 Mar 2020 00:47:04 -0800 (PST)
Received: from VincentChen-ThinkPad-T480s.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id v8sm1699217pjr.10.2020.03.03.00.47.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 03 Mar 2020 00:47:04 -0800 (PST)
From: Vincent Chen <vincent.chen@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, jason.wessel@windriver.com,
 daniel.thompson@linaro.org, dianders@chromium.org
Subject: [PATCH 1/5] kgdb: Add kgdb_has_hit_break function
Date: Tue,  3 Mar 2020 16:47:00 +0800
Message-Id: <1583225220-26137-1-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_004705_840501_9F467F94 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Vincent Chen <vincent.chen@sifive.com>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The break instruction in RISC-V does not have an immediate value field, so
the kernel cannot identify the purpose of each trap exception through the
opcode. This makes the existing identification schemes in other
architecture unsuitable for the RISC-V kernel. To solve this problem, this
patch adds kgdb_has_hit_break(), which can help RISC-V kernel identify
the KGDB trap exception.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 kernel/debug/debug_core.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/kernel/debug/debug_core.c b/kernel/debug/debug_core.c
index 2b7c9b67931d..01bc3eea3d4d 100644
--- a/kernel/debug/debug_core.c
+++ b/kernel/debug/debug_core.c
@@ -417,6 +417,18 @@ int kgdb_isremovedbreak(unsigned long addr)
 	return 0;
 }
 
+int kgdb_has_hit_break(unsigned long addr)
+{
+	int i;
+
+	for (i = 0; i < KGDB_MAX_BREAKPOINTS; i++) {
+		if (kgdb_break[i].state == BP_ACTIVE &&
+		    kgdb_break[i].bpt_addr == addr)
+			return 1;
+	}
+	return 0;
+}
+
 int dbg_remove_all_break(void)
 {
 	int error;
-- 
2.7.4


