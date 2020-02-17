Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD4C160D62
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Feb 2020 09:33:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jQSZYEZ2vhkMED23W6rsFbYhYDKZOEiTycR94nUJ+Ew=; b=tLTojI6a3QCHOb
	OKODUmuodrF0kihRE8pdyibzfh8Gkm2vGEAl/PQ2OAg0Mcz9CPEs2qNqaksDwVKzWg8UKjdo10Vyf
	YaBFE1oRpGFwdME3C23/ppvWYPTdAgAEmuCt7rhTVivOJ291fOkkLJATh0j3bmE1Xtw+T8An81S0Y
	zL+zRvjzVclRmiWLfbgjB+fCfAhmRFW+61aIvrH6zud2roP5lcXElU1ZJf8SD/sBSgXxQnmpn7zr3
	9aVYbZH8sjLXO5Axdugq4v40X+wzU0KOkPP3QNNETuwqKPkZSaJq1V4H81+S7TsuxvRcoE03c1lF6
	EUOweC1eIuh4EaAkEoag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bpm-00068L-OA; Mon, 17 Feb 2020 08:32:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bpb-0005sl-32
 for linux-riscv@lists.infradead.org; Mon, 17 Feb 2020 08:32:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id j7so6424125plt.1
 for <linux-riscv@lists.infradead.org>; Mon, 17 Feb 2020 00:32:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jQSZYEZ2vhkMED23W6rsFbYhYDKZOEiTycR94nUJ+Ew=;
 b=QRcu7K1ynFQwM/E1GpcioKUsU0jYPrs/IocnAODOpl69n8tyPN0p1m5oqePM3+dU+p
 YXh3OKQ7P927emmDXw95LEbZN6PRdCzzoqyHvyiPtpqu7FXPwU3ttIujRunfr43PaaQs
 lbqIDXrg94IkC/U1l9jxl47ENqXcpB0O3k2lIIrFDllsVk+fwEuN1vlRo1353ejNfxCE
 OM50ksoOxNJY6zn+w3oA34LR7DyD79xytbkFjqCUdM8xmUsF/C2UI2CHjvWtbzXNexsT
 0s8Sqpf83fllFTHw8kW4U/idvnIZP+wqX8nMQAn4J+gqkdoogp9ExNVPU5Uq1WmWjIVR
 WthQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jQSZYEZ2vhkMED23W6rsFbYhYDKZOEiTycR94nUJ+Ew=;
 b=PDE15exOh3WFh/qBaDhVJeURh3zZfxvB+TzX/ZMnCFJhZDopgZ/M5GjwvPVknsPpG1
 y431bC5HIFXVen3+Rprz1NdYPsalIg2+gAFsql7qU+1otq90Nb4cwABEHxGuidbwpZDx
 0zWMEC1Eb9PNeJSKntNnCOtKcutlSz+3C5PulPRwN5mZq+6p0QZYcR5mXbpZK/Qqe0Qn
 9ZYLRp2L8t5oJ4u9tzw8P5h5XtwVG5P1PyrLg5nNsa7l98FtrcakDZV/D1LUIvEEJhrd
 +njPgG0doyYHEkn74Kf2UxJyiI6s8T5/0NpPDHmvyzR1ZH5uYtp/rg6xIkW0I6E/+Jjo
 jMuA==
X-Gm-Message-State: APjAAAW0HL/0flUOuaEfx11t8IS1HGE3NtmkHl9bK5Zq/XfyISeW0Xvv
 FkfGxpj6HCshthQo4rEyd4A0Jw==
X-Google-Smtp-Source: APXvYqzchtZ835QZOpwl9/RkdAZa/TC3OAT+PpflYbCHUOsWhgYlP8eqrbOPIe6oOTl82ou4Mga+5w==
X-Received: by 2002:a17:902:8b85:: with SMTP id
 ay5mr13963098plb.253.1581928362335; 
 Mon, 17 Feb 2020 00:32:42 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id z10sm16989319pgz.88.2020.02.17.00.32.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Feb 2020 00:32:41 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 8/8] riscv: add two hook functions of ftrace
Date: Mon, 17 Feb 2020 16:32:23 +0800
Message-Id: <20200217083223.2011-9-zong.li@sifive.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200217083223.2011-1-zong.li@sifive.com>
References: <20200217083223.2011-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_003243_153461_70BA41B7 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

After the text section be mask as non-writable, the ftrace have to
change the permission of text for dynamic patching the intructions.
Add ftrace_arch_code_modify_prepare and
ftrace_arch_code_modify_post_process to change permission.

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/ftrace.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index c40fdcdeb950..576df0807200 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -7,9 +7,27 @@
 
 #include <linux/ftrace.h>
 #include <linux/uaccess.h>
+#include <linux/memory.h>
+#include <asm/set_memory.h>
 #include <asm/cacheflush.h>
 
 #ifdef CONFIG_DYNAMIC_FTRACE
+int ftrace_arch_code_modify_prepare(void) __acquires(&text_mutex)
+{
+	mutex_lock(&text_mutex);
+	set_kernel_text_rw();
+	set_all_modules_text_rw();
+	return 0;
+}
+
+int ftrace_arch_code_modify_post_process(void) __releases(&text_mutex)
+{
+	set_all_modules_text_ro();
+	set_kernel_text_ro();
+	mutex_unlock(&text_mutex);
+	return 0;
+}
+
 static int ftrace_check_current_call(unsigned long hook_pos,
 				     unsigned int *expected)
 {
-- 
2.25.0


