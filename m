Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 731F51B516
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 13:36:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lCDAIH8qwbbdbrrmjAlm+b8JqvK3gVlF7CkMhCbCbDc=; b=LLb
	g1p0yh7PeGQVU+laWlbPyHiRwc3K+Cz2wQhyBjyGOy05FvInI7VniR9gFF49lq4Ov3tLsQ4MDNrLG
	lPWmNK3Q7mNXH+Zuf8eF1lUlfoBO344x7yV7QpbUy5eCEDRN8ykTMfE/Ss2z5+ElqvKJwOExczXFe
	vtzCsqNyAW78iYA9uvxkZXgky6oLddmi368KWlxzNef099dYwPzCLvngyZMVdEoxfBjtP7OQGOTMb
	lNvYH7XEMrMAZwQkizKakYRVWiufYqL6c1T56qvduVlBKF5n8zPq3evFD+cv1xYSYoo3IvCrN/lvo
	9BXD7yI2oh+9rVYit/5TPlJ3diEdmlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9GA-0004Cc-Gr; Mon, 13 May 2019 11:36:46 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9G7-0004C6-N9
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 11:36:45 +0000
Received: by mail-pl1-x644.google.com with SMTP id x15so6341538pln.9
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 04:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=Fb/veKnGyDp8hXkKfJ4Q0+zLXcHapXdg1OxZTaiVz/4=;
 b=SE8MnegajciPpkWVJ3bjrJg/+Dip1PMvBNurM0aKdalPz4oR4x4yYveDcMWz8OEQHq
 J9MVQp4vBX6ff4/QzKfzPyfzyMAo5w7NyUyANFlqFRagc9LcpbYhIhQMqNAeNUoEkgth
 1/unQ/fyAS6T9UVRGsap2IMHkitsE8v2nOJZDVZoxCL9AHO3zsLSjP0Psl1KdwBIFmmy
 giDet+agKy9nJYSCh2IqIsJjXghT3dHQuFTZFT3ntgHsFtLiXkYV3CGPpONSIQTVzHlz
 183YAg3JYWkfOgTLmUIKL+wybYXpvMAX+gX2Pwc2/0jgzcARbdIlunXJ6T1zxzgBgn9E
 0F6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=Fb/veKnGyDp8hXkKfJ4Q0+zLXcHapXdg1OxZTaiVz/4=;
 b=SuGg7nUpn34+SFdVeqIraSZT0PgYxawImN+7WDkb6sobV2wIGjZtZUSKT/t2gL0Ahi
 fS6Wh+h9nSypBLzsS7YhtPPvYP3Brhy1KkV4KF+Z+vb2U/QletUgI4h3nQOL/Tp7SUgc
 /FehGR/RfmjHv1w11cTE2FqRzQC3F8iC4ep0L/5Zo9tNL0pcUapQzF5aQEfmHKxVHril
 v5DNTr/AVf/M+ny93VGvzhXb3JYS5ct2FzFb3jIwECiipPr8l6qssH/MXsRW87RoKhQB
 I2CzSs0K9OhwXpck2bXhgY7KH+1+JkCqW+YYLec55GE5O4/3TUV7VMkY1DwMWyrXV9S2
 g0AQ==
X-Gm-Message-State: APjAAAUq3yQepNGEISlRMe4uOzSzQXk+6QH7Vm9j5550cBijWpG3Yvne
 2KbdOE/aatUclF6IvcJFYyaNUg==
X-Google-Smtp-Source: APXvYqwKjZpV/pDCZYH2704t0tvyeXKmd34Pjq0/pYTVJ+prbL7PjV6J3fy9y1fjyhqTQ/BriZeUcg==
X-Received: by 2002:a17:902:446:: with SMTP id
 64mr29268102ple.322.1557747402600; 
 Mon, 13 May 2019 04:36:42 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 d15sm44657128pfm.186.2019.05.13.04.36.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 04:36:41 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-pwm@vger.kernel.org, linux-riscv@lists.infradead.org,
 thierry.reding@gmail.com
Subject: [PATCH v12 0/2] PWM support for HiFive Unleashed
Date: Mon, 13 May 2019 17:06:18 +0530
Message-Id: <1557747380-12257-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_043643_811881_A0467BBB 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, aou@eecs.berkeley.edu,
 palmer@sifive.com, linux-kernel@vger.kernel.org, sachin.ghadi@sifive.com,
 Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series adds a PWM driver and DT documentation
for HiFive Unleashed board. The patches are mostly based on
Wesley's patch.

This patchset is based on Linux v5.1 and tested on HiFive Unleashed board
with additional board related patches needed for testing can be found at
dev/yashs/pwm branch of:
https://github.com/yashshah7/riscv-linux.git

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
 drivers/pwm/pwm-sifive.c                           | 338 +++++++++++++++++++++
 4 files changed, 383 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-sifive.txt
 create mode 100644 drivers/pwm/pwm-sifive.c

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
