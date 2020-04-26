Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 473091B8F58
	for <lists+linux-riscv@lfdr.de>; Sun, 26 Apr 2020 13:08:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7gIwHNQfsxht5gpgEgzCAHjsGxOYw3xhYl1Xs6VhjBg=; b=YhNM6ezAIBo0Md
	Mufc1A4WtXDzyqK6ZK3cnEBweI2+fhn+3Yh7jOKiHtNd0+pqaKpCGS7tZrZwBU46/Ooqp+nrwLRVw
	7cuTI7IMINsnVrfokY8L5VnBolLrGOShSE9JZc3+SPyl6f/HfnqY3tDtWOLUzloPo36xKPS4s/Xhb
	gbsb1DjHGUtaM4q4daQXXDkmvFdYmOZrmRHw/7aR1wMkBxcjUC/Nasa/b6eZj/GCq4FGXWB2wZh5p
	HfxFI25MlBUAKLww93j9eIPl6uosFR6pWYnuE9/8NL+aJi8E2NFFKxvjiwYjqwpQ8hPzUkSKhdNPK
	erJdZ2/Z684xouYB/wNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSf8Y-0006Ic-3L; Sun, 26 Apr 2020 11:07:50 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSf8U-0006Hr-Lu
 for linux-riscv@lists.infradead.org; Sun, 26 Apr 2020 11:07:48 +0000
Received: by mail-pj1-x1043.google.com with SMTP id t9so6134691pjw.0
 for <linux-riscv@lists.infradead.org>; Sun, 26 Apr 2020 04:07:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7gIwHNQfsxht5gpgEgzCAHjsGxOYw3xhYl1Xs6VhjBg=;
 b=HLnbjquSwdq8Zce53mLav/jtVfvzN14OZHNuRVisauGAC6ptI2k0GHl6JT1NXPh0Kn
 RLq80zMB0jjYecdumep/9J+S+WUIDzojDCAcCb5HwHlgZcE/w9OtcQu+eJwAWjobuhQz
 ZTslBtePnTSz6vIr8CqDpSUFd0hl+0EomF+Ep7uxlJXzrQfzhe5egIh3YiCF0OY0+gLB
 hH1irCG0eqEIxRVdkXvIfWxaGoWWmM3FZ6KFeRy9yP2R9ACr69aavfVDqQgCBfm3v68x
 g/vjJUKaOig9Aryskj8AN6yhqGiE2yWc/a1cQO8ewp23vdIX0Yx5ZRNI5/6gc6OsF1W6
 lkVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7gIwHNQfsxht5gpgEgzCAHjsGxOYw3xhYl1Xs6VhjBg=;
 b=laTBibBgActuyTNAINxJJwAdzlk9/E34JtB8KqA2Vj/paidk7cgkulaW8T2lMy2iSC
 Ksy2npuWmo4mp2gNnOXwmh1etRVs+ZITxg12Z7rrxTgfPnD4uQP+qfsoMrlJsAcMGpzy
 G5CvVPL5ISWqhZhIKwo94HAmBj+f3beDz5Q/yDJ7sgwa3Z46620KncUSvRMVJOucmMn8
 on49we5d2TXEnBaAKixs/iVNcsXCuvW8pulDtJjzM+SAqPIOD8AUFPtcOWZu3lWfsEYp
 kC0sb/T/LxFsiZJ0qwS4OW74f/zV34DwDitvCnIaxpBpZRvZXkikKaCIHxVQdVF2ubSu
 JBww==
X-Gm-Message-State: AGi0PuaYKUq0uxxEcCDCOqFTI1yMSVu1ljR+A7XrCkLaiu2npQQaA4ZF
 FVVVGgHv+hoEv6/Fqb/5lJS9Ew==
X-Google-Smtp-Source: APiQypLU2/3p37XU8avcrm/98FrcDbT+mjIivFbW6du/XkbUrmrGn2/M/rztjac2fQUXtvTY5oJMsg==
X-Received: by 2002:a17:902:ed13:: with SMTP id
 b19mr18817426pld.254.1587899265549; 
 Sun, 26 Apr 2020 04:07:45 -0700 (PDT)
Received: from hsinchu02.internal.sifive.com
 (114-34-229-221.HINET-IP.hinet.net. [114.34.229.221])
 by smtp.gmail.com with ESMTPSA id h31sm9123564pjb.33.2020.04.26.04.07.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Apr 2020 04:07:44 -0700 (PDT)
From: Zong Li <zong.li@sifive.com>
To: palmer@dabbelt.com, paul.walmsley@sifive.com, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, anup@brainfault.org
Subject: [PATCH] irqchip/sifive-plic: allow many cores to handle IRQs
Date: Sun, 26 Apr 2020 19:07:40 +0800
Message-Id: <20200426110740.123638-1-zong.li@sifive.com>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_040746_887663_389A9C2C 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1043 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: david.abdurachmanov@sifive.com, Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Currently, driver forces the IRQs to be handled by only one core. This
patch provides the way to enable others cores to handle IRQs if needed,
so users could decide how many cores they wanted on default by boot
argument.

Use 'irqaffinity' boot argument to determine affinity. If there is no
irqaffinity in dts or kernel configuration, use irq default affinity,
so all harts would try to claim IRQ.

For example, add irqaffinity=0 in chosen node to set irq affinity to
hart 0. It also supports more than one harts to handle irq, such as set
irqaffinity=0,3,4.

You can change IRQ affinity from user-space using procfs. For example,
you can make CPU0 and CPU2 serve IRQ together by the following command:

echo 4 > /proc/irq/<x>/smp_affinity

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 drivers/irqchip/irq-sifive-plic.c | 21 +++++++--------------
 1 file changed, 7 insertions(+), 14 deletions(-)

diff --git a/drivers/irqchip/irq-sifive-plic.c b/drivers/irqchip/irq-sifive-plic.c
index d0a71febdadc..bc1440d54185 100644
--- a/drivers/irqchip/irq-sifive-plic.c
+++ b/drivers/irqchip/irq-sifive-plic.c
@@ -111,15 +111,12 @@ static inline void plic_irq_toggle(const struct cpumask *mask,
 static void plic_irq_unmask(struct irq_data *d)
 {
 	struct cpumask amask;
-	unsigned int cpu;
 	struct plic_priv *priv = irq_get_chip_data(d->irq);
 
 	cpumask_and(&amask, &priv->lmask, cpu_online_mask);
-	cpu = cpumask_any_and(irq_data_get_affinity_mask(d),
-					   &amask);
-	if (WARN_ON_ONCE(cpu >= nr_cpu_ids))
-		return;
-	plic_irq_toggle(cpumask_of(cpu), d, 1);
+	cpumask_and(&amask, &amask, irq_data_get_affinity_mask(d));
+
+	plic_irq_toggle(&amask, d, 1);
 }
 
 static void plic_irq_mask(struct irq_data *d)
@@ -133,24 +130,20 @@ static void plic_irq_mask(struct irq_data *d)
 static int plic_set_affinity(struct irq_data *d,
 			     const struct cpumask *mask_val, bool force)
 {
-	unsigned int cpu;
 	struct cpumask amask;
 	struct plic_priv *priv = irq_get_chip_data(d->irq);
 
 	cpumask_and(&amask, &priv->lmask, mask_val);
 
 	if (force)
-		cpu = cpumask_first(&amask);
+		cpumask_copy(&amask, mask_val);
 	else
-		cpu = cpumask_any_and(&amask, cpu_online_mask);
-
-	if (cpu >= nr_cpu_ids)
-		return -EINVAL;
+		cpumask_and(&amask, &amask, cpu_online_mask);
 
 	plic_irq_toggle(&priv->lmask, d, 0);
-	plic_irq_toggle(cpumask_of(cpu), d, 1);
+	plic_irq_toggle(&amask, d, 1);
 
-	irq_data_update_effective_affinity(d, cpumask_of(cpu));
+	irq_data_update_effective_affinity(d, &amask);
 
 	return IRQ_SET_MASK_OK_DONE;
 }
-- 
2.26.1


