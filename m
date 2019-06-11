Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF8D3C384
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 07:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EZ2TiUj6dG7QMC5iS3lHZ3Ijwwr68bVWnW+55iXy8Mk=; b=mxy
	/yxcmFdDRA91iOpcncig81eS4h8napCKkrUWm+Or2pUIyvuGFVmJbN8vJ/xBzgf2Je1FuaDYHljFT
	9rp1TlU0EMWi7vQ97xnbmchDRvy3xd00wR8+EcPhwuCakAFyvzTgh4HLEJV1qgNQcYtKT9KmupvUC
	BPAW4NbRDPJle4j+9mew81/X2ooSfxVhSOyIZAqVrCXIIWcxtEB+A/mvoBj1Crb9u9uIX2JL+lnTI
	wUXYIBir2Lr/Gqljo7ZdjnVXbFFT//tQsdyDDovp0YJkNdcO9nRLmMTcVym7TnbELqwo+YYL2C6CV
	gdnHHjZ3zBh3MMn/T2Tfk0b0A+OUCpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haZas-0004MN-Tv; Tue, 11 Jun 2019 05:45:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haZap-0004Lq-Bf
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 05:45:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id t16so6669172pfe.11
 for <linux-riscv@lists.infradead.org>; Mon, 10 Jun 2019 22:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=AC7Q5AeoR3PoVwY63Fs/Bbr4OkIe7mdwRdwoih2xQXM=;
 b=d1SfvDdSO5LW24x4Uqc4ksCtu++Q8Xe8tw9gXshryTCJiPoZz0s2ehJGCuxbtZc+Vc
 r6bsQsx2OSum0krPWyUeMBF08aV5qMqV7CH5WYpZGKgU3egCYZ2nlkeWIuUEDScBt/xi
 yRikO4Lzu99FnXADtjH0CcY+k0YvtqIljAmC/BkxMNHA3BKUWQXAvueoRX+3vZPDl60X
 rwkil8iODmJ5O7viS3hwpEJKtVaxMzrCV6V3jfWxa21L+giD5wlK4eFdU0k9VV3/7xhl
 LpxWSib2rl0GSWmdXAxh+5cchiGRFjAGBkjBjoas/JZJ4e0WeGeaWRM2msuax0+vpcw4
 un3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AC7Q5AeoR3PoVwY63Fs/Bbr4OkIe7mdwRdwoih2xQXM=;
 b=T1e+r/lbENQwsaecZsC4ctf9Q0IopJVlo5TXtj9ciLHaITPUUWYNWcN/g6tFpB+N2i
 Q4tHgzfYT1Y26LKLYTMvhXeeLe7ibr9HDhTdn9GJd6UoIT6gGI0I6Yl1ZMe1hww2jG62
 aLwyyWw5PS8+AZfyAzAs1FeszTqiljR4b90m7ArPMCRAjcVLGjEYPJOph14K3PEURLXo
 O7agNYYUjfoXIafCSUFjpy7rsV/3AYqapvB6zp6Kuqz6FO2YZ8DWzmT8snnBXwlTA1qU
 TAL6n/C/xSii1t/fSxWGfs81gddybUCdE7vjE77KbqRc2hA+ZuG/ELUhpprXouyyOV8r
 MI2Q==
X-Gm-Message-State: APjAAAWq+8J1QylzkhizLn6RNS0lpBeLcqBZ+oPuOUv3qPwHC7KMXHGX
 p0I1iCnVk/IxO6/ks2abdCgEsA==
X-Google-Smtp-Source: APXvYqwBOvCQnw3NQjALS8zfnVm+kEy+W4gCD/woV1b1tFEZz2+HFTLQGa7knvwNAaCponAWXJ7SvQ==
X-Received: by 2002:a63:8049:: with SMTP id j70mr16231374pgd.63.1560231909490; 
 Mon, 10 Jun 2019 22:45:09 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id d35sm11609228pgm.31.2019.06.10.22.45.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 10 Jun 2019 22:45:08 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: thierry.reding@gmail.com, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, u.kleine-koenig@pengutronix.de
Subject: [PATCH v13 0/2] PWM support for HiFive Unleashed
Date: Tue, 11 Jun 2019 11:14:42 +0530
Message-Id: <1560231884-15694-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_224511_426863_2961E804 
X-CRM114-Status: GOOD (  16.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, palmer@sifive.com,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series adds a PWM driver and DT documentation
for HiFive Unleashed board. The patches are mostly based on
Wesley's patch.

This patchset is based on Linux v5.2-rc1 and tested on HiFive Unleashed
board with additional board related patches needed for testing can be
found at dev/yashs/pwm_v13 branch of:
https://github.com/yashshah7/riscv-linux.git

v13
- Rebased onto Mainline v5.2-rc1
- Correct the order of pwmchip_remove() after clk_disable() in .remove()

v12
- Rebased onto Mainline v5.1

v11
- Change naming convention for pwm_device and pwm_sifive_ddata pointers
- Assign of_pwm_xlate_with_flag() to of_xlate func ptr since this driver
  use three pwm-cells (Issue reported by Andreas Schwab <schwab@suse.de>
- Other minor fixes

v10
- Use DIV_ROUND_CLOSEST_ULL instead of div_u64_round
- Change 'num' defination to u64 bit (in pwm_sifive_apply).
- Remove the usage of pwm_get_state()

v9
- Use appropriate bitfield macros
- Add approx_period in pwm_sifive_ddata struct and related changes
- Correct the eqn for calculation of frac (in pwm_sifive_apply)
- Other minor fixes

v8
- Typo corrections
- Remove active_user and related code
- Do not clear PWM_SIFIVE_PWMCFG_EN_ALWAYS
- Other minor fixes

v7
- Modify description of compatible property in DT documentation
- Use mutex locks at appropriate places
- Fix all bad line breaks
- Allow enabling/disabling PWM only when the user is the only active user
- Remove Deglitch logic
- Other minor fixes

v6
- Remove the global property 'sifive,period-ns'
- Implement free and request callbacks to maintain user counts.
- Add user_count member to struct pwm_sifive_ddata
- Allow period change only if user_count is one
- Add pwm_sifive_enable function to enable/disable PWM
- Change calculation logic of frac (in pwm_sifive_apply)
- Remove state correction
- Remove pwm_sifive_xlate function
- Clock to be enabled only when PWM is enabled
- Other minor fixes

v5
- Correct the order of compatible string properties
- PWM state correction to be done always
- Other minor fixes based upon feedback on v4

v4
- Rename macros with appropriate names
- Remove unused macros
- Rename struct sifive_pwm_device to struct pwm_sifive_ddata
- Rename function prefix as per driver name
- Other minor fixes based upon feedback on v3

v3
- Add a link to the reference manaul
- Use appropriate apis for division operation
- Add check for polarity
- Enable clk before calling clk_get_rate
- Other minor fixes based upon feedback on v2

V2 changed from V1:
- Remove inclusion of dt-bindings/pwm/pwm.h
- Remove artificial alignments
- Replace ioread32/iowrite32 with readl/writel
- Remove camelcase
- Change dev_info to dev_dbg for unnecessary log
- Correct typo in driver name
- Remove use of of_match_ptr macro
- Update the DT compatible strings and Add reference to a common
  versioning document

Yash Shah (2):
  pwm: sifive: Add DT documentation for SiFive PWM Controller
  pwm: sifive: Add a driver for SiFive SoC PWM

 .../devicetree/bindings/pwm/pwm-sifive.txt         |  33 ++
 drivers/pwm/Kconfig                                |  11 +
 drivers/pwm/Makefile                               |   1 +
 drivers/pwm/pwm-sifive.c                           | 339 +++++++++++++++++++++
 4 files changed, 384 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-sifive.txt
 create mode 100644 drivers/pwm/pwm-sifive.c

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
