Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A471A5BD4
	for <lists+linux-riscv@lfdr.de>; Sun, 12 Apr 2020 03:42:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:MIME-Version:
	Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aQkCdg3OoDULAq8LLMFvMfwkl2FbDtSgUr/S5jyTE0=; b=oxHH6OBYwqXyav
	rit71pWkYbj0jZ1PkcO0rZcGqDU1YTWhLpsEDpg/6sXpTkrCHBFspNXbf7uom0VwB/D9k+EmnM6mR
	GBWamGpiHekmkWHgsryfC/RyPRlgVEQSKnpidFbHALAzDHZDCpheACG+ZJALimZG9gngbntgTqzMi
	Xy6yqrwZD7xhr7WUljQmiu9+ZN7rWr1CqdMbE6yuuswdSMaZrnERbpKhym0v6TmL7qoxqdXJL8zWq
	mGRAW8XLgdMeUeokGcp31jsFYFJjjnxuriQtDa5DHlMQEDeECxEAAw9EnniU31u8B45dLNEXejTOj
	saR6NLghzlvPBA4kT3bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNRdw-00040T-5k; Sun, 12 Apr 2020 01:42:40 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNRdr-0003z3-TL
 for linux-riscv@lists.infradead.org; Sun, 12 Apr 2020 01:42:37 +0000
Received: by mail-pl1-x644.google.com with SMTP id d24so2110312pll.8
 for <linux-riscv@lists.infradead.org>; Sat, 11 Apr 2020 18:42:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5aQkCdg3OoDULAq8LLMFvMfwkl2FbDtSgUr/S5jyTE0=;
 b=Ypcd1uccGRBWnr0na4M5FZ/bdMeVnn9NswxKVeeHemUTKPAqMfaWhuqouAhzQbKnbQ
 5P7NvYwRCHe+jrNDCP1GWRleNAEn02yUT/JgYxUMGd8PtIsxyYF10Fs9URQAmWuj4JAj
 T/RpD3jg790TYZkfAwFDPw2iyWCpFvHcRD+QJH5lj4ssgF0mtiPOcdF70nc/6S1dAx1N
 az1lYW4B/5jkmKi97jcx6lTqLVUeIG07EL7sYwmYo7WJog4q1DCi1/91+TRE3q1l97vE
 APGAvIvelCkNrd0V+1gGJ0j8CTrTARwOEY6osTBVhwvMvEhZdgLoaMz3zxYuh8RXrK+y
 Tn+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5aQkCdg3OoDULAq8LLMFvMfwkl2FbDtSgUr/S5jyTE0=;
 b=hCUFNMAbsiLOPAa6EfleZOIbLXqgHojjnSoawNu5SdKAJiHkkyNqEzQc0/PM2s6lKw
 /HnnkZZlvrjO2w75kV9wB1uhFtbDkTjVKOpaGV9dzXu0l+/7GVYjyKfa5cAHp+7IaiOR
 GuGtjoNczovrC83OD+x6McMtzAZGeXHXlYyO5g7raD10gRvLT3B43JPQ3oNC2/xiqcVJ
 qR7U5x1FbqJhg554CrZMamx6qeKxcyU8QuVxtCV/KXQIUhJrktf479RTQdyUeyx3hXTQ
 zHbXpbLOBChqZFKiuWfuNTlHpdRX4zDQZ6gW2N1zEuzSelszgdvCbSLdK8c40qiWvciu
 L2kw==
X-Gm-Message-State: AGi0Pubbf1jfRDZethUQZ4l1NXQkUkfEo8esYt62z+NLjfQPfFHX6h/Y
 JOWA/4Uu3X6KMxCvKKK41Tmxdw==
X-Google-Smtp-Source: APiQypJZMNkid4SD3TvUZnv2Uc1XwGLlL/3GhLZK9cbCjsmfMW3ay7qZazE3y9kakkMYoPhdtwaj8w==
X-Received: by 2002:a17:90a:734b:: with SMTP id
 j11mr14331497pjs.10.1586655755028; 
 Sat, 11 Apr 2020 18:42:35 -0700 (PDT)
Received: from localhost.localdomain (123-195-35-41.dynamic.kbronet.com.tw.
 [123.195.35.41])
 by smtp.gmail.com with ESMTPSA id w90sm5252900pjj.2.2020.04.11.18.42.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 Apr 2020 18:42:34 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: daniel.thompson@linaro.org, paul.walmsley@sifive.com, palmer@dabbelt.com
Subject: [PATCH v3 1/5] kgdb: Add kgdb_has_hit_break function
Date: Sun, 12 Apr 2020 09:41:57 +0800
Message-Id: <1586655721-22567-2-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
References: <1586655721-22567-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_184235_954280_FFDF7240 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kgdb-bugreport@lists.sourceforge.net, linux-riscv@lists.infradead.org,
 Vincent Chen <vincent.chen@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The break instruction in RISC-V does not have an immediate value field, so
the kernel cannot identify the purpose of each trap exception through the
opcode. This makes the existing identification schemes in other
architecture unsuitable for the RISC-V kernel. To solve this problem, this
patch adds kgdb_has_hit_break(), which can help RISC-V kernel identify
the KGDB trap exception.

Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
Acked-by: Daniel Thompson <daniel.thompson@linaro.org>
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


