Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B4D9BAC3C
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Sep 2019 02:45:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t1W3S7HCu7xvDZuAQQaCQj0IopBxzKxLc6WQWZFAikA=; b=h7tAfqqpM0rP9Z+E20yS0bxyJI
	PGk6WLQOYOstajAkVs2GQyRwuuG0K330abugy+AyZm+m2prOR4jD7o734FLrwmlvffwGk18iq0OlP
	YwrPckL7jgp/sl6VP0VwKQZsLEDGVS3rGqhu7Jl+v6TwBMoLhZQ7h8eEyBf2IfOJGNcHRmJMtiSpa
	NrjLar9wWXfzK5zwwMpGGvWoOi4MV59Zge6zpm1zgJpxh7/XyxrNOymwm7CQlJStE64HZTheWmo8E
	6FEDOAJ4IWBikHBww4TzoCTQdcPwWpYdtN6bVc0arBcr+W075wneGwIyKp6i3RJtb2QRNkH0+HXuk
	kc0mx9sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCCU9-0003CK-9a; Mon, 23 Sep 2019 00:45:49 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCCU3-00037v-PV
 for linux-riscv@lists.infradead.org; Mon, 23 Sep 2019 00:45:45 +0000
Received: by mail-pf1-x443.google.com with SMTP id h195so8038491pfe.5
 for <linux-riscv@lists.infradead.org>; Sun, 22 Sep 2019 17:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UolwQ0cu1AA/iqmfvkDUCTBOg9ROKFLAkl4FEYmNIH4=;
 b=hXoD43kBut3QYuGcML4svtO79QqkxZYAVBXnKO/MGgHR7hUFpdqDHXUJGqyaVrLgy8
 DV7LV4TDe25ilVZwic5rdkCoG36xzbvnsyDAcZsmn3TF8Zo8azceRpEYc5ClD3aIxN2/
 JunGFRWlnM9kuuljFmHzGYIxjGlCFWRkpdYwwhybOYG5dEcM6CeW40BlGLSIy7ueA3mr
 WFUDYTk7xrOAoLiYIzMoYVBFKibNFwTQOmi2eQeKfo/t5Kj85U18yRcW+yBMTolXDtwa
 ZkDjGGuWYQyeY7/xz4KVbi0dPEV/JWJPsHWL8R85YWjsh1Zl+7xwEExciAZIgcFImdvk
 r9xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UolwQ0cu1AA/iqmfvkDUCTBOg9ROKFLAkl4FEYmNIH4=;
 b=WVJUMY49XKksHJFELlNI6bfvpFttBIg6wKFeL3MlgEm82LTwjy1f+QQ18G1GAybvl7
 +ZW6RPxGK3KOQq6vWuqKswoOgSyU6O4Rl8UuITqzdx+zqJuh+NwfM3W2y4sxa4VjLsyc
 Wa6p61ln39Q61xwrgJOtNqrPtrehrkpxTyA532/+Z1eAS6u4lKDhwgy/G0MyHkHKKXUV
 zM3peFjJXdEXPL2zHCzY5adR/Lc0zsrN8coo75HuOXgiq4psD+rAkA+JLQktyKyrECVy
 ZJVJKXa5C+U45JopOTeXlAdEZPsRz6a2eV8hbfhzV8chSZP0zmKFl+5ZnDXzroNiAmb6
 8gtA==
X-Gm-Message-State: APjAAAVDDPqSCMpvSDQT52jmBXX2cu2aWbfIQaJaUyzKAVQ7Vzdr0W24
 xOiTi4D4r6UP+72AtayH0XfqP/NTJ4M=
X-Google-Smtp-Source: APXvYqxgCsJWq73K4bZZuZ4ncyptKJaUKhytI6kBAarKqVdUsqYNrPKgHKP33BPUTwHvpg2aedoTFQ==
X-Received: by 2002:a65:5a84:: with SMTP id c4mr26598583pgt.261.1569199543088; 
 Sun, 22 Sep 2019 17:45:43 -0700 (PDT)
Received: from localhost.localdomain (220-132-236-182.HINET-IP.hinet.net.
 [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id l7sm9139392pjy.12.2019.09.22.17.45.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 22 Sep 2019 17:45:42 -0700 (PDT)
From: Vincent Chen <vincent.chen@sifive.com>
To: linux-riscv@lists.infradead.org
Subject: [PATCH 4/4] riscv: remove the switch statement in do_trap_break()
Date: Mon, 23 Sep 2019 08:45:17 +0800
Message-Id: <1569199517-5884-5-git-send-email-vincent.chen@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
References: <1569199517-5884-1-git-send-email-vincent.chen@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_174543_878243_87AE510E 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vincent.chen@sifive.com, palmer@sifive.com, linux-kernel@vger.kernel.org,
 aou@eecs.berkeley.edu, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

To make the code more straightforward, replacing the switch statement
with if statement.

Suggested-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
---
 arch/riscv/kernel/traps.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/kernel/traps.c b/arch/riscv/kernel/traps.c
index dd13bc90aeb6..1ac75f7d0bff 100644
--- a/arch/riscv/kernel/traps.c
+++ b/arch/riscv/kernel/traps.c
@@ -124,23 +124,24 @@ static inline unsigned long get_break_insn_length(unsigned long pc)
 
 asmlinkage void do_trap_break(struct pt_regs *regs)
 {
-	if (!user_mode(regs)) {
+	if (user_mode(regs)) {
+		force_sig_fault(SIGTRAP, TRAP_BRKPT,
+				(void __user *)(regs->sepc));
+		return;
+	}
+#ifdef CONFIG_GENERIC_BUG
+	{
 		enum bug_trap_type type;
 
 		type = report_bug(regs->sepc, regs);
-		switch (type) {
-#ifdef CONFIG_GENERIC_BUG
-		case BUG_TRAP_TYPE_WARN:
+		if (type == BUG_TRAP_TYPE_WARN) {
 			regs->sepc += get_break_insn_length(regs->sepc);
 			return;
-		case BUG_TRAP_TYPE_BUG:
-#endif /* CONFIG_GENERIC_BUG */
-		default:
-			die(regs, "Kernel BUG");
 		}
-	} else
-		force_sig_fault(SIGTRAP, TRAP_BRKPT,
-				(void __user *)(regs->sepc));
+	}
+#endif /* CONFIG_GENERIC_BUG */
+
+	die(regs, "Kernel BUG");
 }
 
 #ifdef CONFIG_GENERIC_BUG
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
