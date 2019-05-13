Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 819851B517
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 13:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wQglA4wX0PQDEyCpAx8no3CWNh7RHCyz+iP0q9u+dhs=; b=DgvoicRE7XEUtiCXzntZ3fA6+v
	Iga/taWB0nYwO3mwGqWSTu06/uqrX6lUA7tHynl9RPKWO7WroWjNacOD/J+j3PbVKMc0DpHa1yBmm
	CNvUo1nCHoQ8TZ/9JfvE9rqlCU7R7gxZ2CZ8VGPgZRg12BkT9oAgfB+XZ5Deai5LNvkgdOkTLHJyY
	qH9a28sRDezHamvtuF7xPnHQC7h2Ztg8kk5cXbijoRF2QyYuZBMi8ZCs+zMxq3ZcQnOQptqgDIuU9
	ULJyTiGzJJgNB7Vd6LzHaMDG2TPp0sd/s6n9QcdH/L2E6hnsJDgVSWcX9FEGctWYL49iFBMyDZRvc
	bV409cQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ9GH-0004Fq-32; Mon, 13 May 2019 11:36:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ9GC-0004EG-Pp
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 11:36:50 +0000
Received: by mail-pg1-x542.google.com with SMTP id z3so6645015pgp.8
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 04:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+NvS/bA472zdii99ejJQCZ5ekFJyNtU3GhsdHX2kjcM=;
 b=HSJoWMFv4UI15gIGdN4HfDjc5OhV6HXuz3MYkrBjwP00M6gakQBeQxowVKWYS6I2yI
 9BaWSEiFwVMiwwovgnG9J2RS58YhJDvqzt/tXdqX5CatoCWGlCc3rCUjgpFPyPa8VG41
 YlZLfnGZBJr8b6qu3H0RPltYNK0DbQp1/pek3FUwXZN6KI0dJ7bSQ+nQQwqKbXzz08Ar
 c8jj2xlnT9+BIBb5UqQeq8zUcmLzt5JWQfzopBHpFBEQcoJ7CejVD8F3Q/StQtLCE0RP
 H1Hp0WBzt2wutw6XGRWYgUC2g7B86rGQRpaXUoK6Xlxq6n2NiuvXZXGbLgvnE0n3k5j9
 n6yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+NvS/bA472zdii99ejJQCZ5ekFJyNtU3GhsdHX2kjcM=;
 b=Zd0YtkD4YBRCKYdEsnwSvNlVvR+tyelsr/zBRoXDKQ5c7JVJW5I9bWF9ODGPgJyu7f
 bLpwVNYzrwgpA/E4yxDNb6Sh8huThEU87xDaCeqwGY+DFaA3ohnZMiA15MnRNalVjdN5
 eKJZ6Z4DRTHKtdVmMDPZ5SpyBM64kJa7AeNHM1nUsGQ2C3zyZ8p5UL9wB1u8YVvIDRCo
 UhFh501KSRJED4Hzt4/wB5Kk9KbMJDes6o69PY579ECZOuIUMZamFV0/+KrIKHrBN+BK
 +hfQOhajOUi6PQTOLsaopGUskfzpH26uOMbQySMPwH43A4JDqCMAV9i4nE+ZFed8Ul/t
 /vQw==
X-Gm-Message-State: APjAAAVI98CthwR7oD2QNJEReUoSoFjwpH+70bp0UI86QL9W4RYHKjkx
 X7URRE+SYdZ6E0hoItn8zl48GQ==
X-Google-Smtp-Source: APXvYqwnqg4FD1C2vTFRZ8KsGeMOJ61L1IQ2YiYK+2uU2Zq+EO5XQf5nA3JLC0mQs/lpcQH4hSb3Cw==
X-Received: by 2002:a65:578a:: with SMTP id b10mr13960185pgr.161.1557747408066; 
 Mon, 13 May 2019 04:36:48 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 d15sm44657128pfm.186.2019.05.13.04.36.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 May 2019 04:36:47 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-pwm@vger.kernel.org, linux-riscv@lists.infradead.org,
 thierry.reding@gmail.com
Subject: [PATCH v12 1/2] pwm: sifive: Add DT documentation for SiFive PWM
 Controller
Date: Mon, 13 May 2019 17:06:19 +0530
Message-Id: <1557747380-12257-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557747380-12257-1-git-send-email-yash.shah@sifive.com>
References: <1557747380-12257-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_043648_849276_AD540734 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

DT documentation for PWM controller added.

Signed-off-by: Wesley W. Terpstra <wesley@sifive.com>
[Atish: Compatible string update]
Signed-off-by: Atish Patra <atish.patra@wdc.com>
Signed-off-by: Yash Shah <yash.shah@sifive.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pwm/pwm-sifive.txt         | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-sifive.txt

diff --git a/Documentation/devicetree/bindings/pwm/pwm-sifive.txt b/Documentation/devicetree/bindings/pwm/pwm-sifive.txt
new file mode 100644
index 0000000..36447e3
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-sifive.txt
@@ -0,0 +1,33 @@
+SiFive PWM controller
+
+Unlike most other PWM controllers, the SiFive PWM controller currently only
+supports one period for all channels in the PWM. All PWMs need to run at
+the same period. The period also has significant restrictions on the values
+it can achieve, which the driver rounds to the nearest achievable period.
+PWM RTL that corresponds to the IP block version numbers can be found
+here:
+
+https://github.com/sifive/sifive-blocks/tree/master/src/main/scala/devices/pwm
+
+Required properties:
+- compatible: Should be "sifive,<chip>-pwm" and "sifive,pwm<version>".
+  Supported compatible strings are: "sifive,fu540-c000-pwm" for the SiFive
+  PWM v0 as integrated onto the SiFive FU540 chip, and "sifive,pwm0" for the
+  SiFive PWM v0 IP block with no chip integration tweaks.
+  Please refer to sifive-blocks-ip-versioning.txt for details.
+- reg: physical base address and length of the controller's registers
+- clocks: Should contain a clock identifier for the PWM's parent clock.
+- #pwm-cells: Should be 3. See pwm.txt in this directory
+  for a description of the cell format.
+- interrupts: one interrupt per PWM channel
+
+Examples:
+
+pwm:  pwm@10020000 {
+	compatible = "sifive,fu540-c000-pwm", "sifive,pwm0";
+	reg = <0x0 0x10020000 0x0 0x1000>;
+	clocks = <&tlclk>;
+	interrupt-parent = <&plic>;
+	interrupts = <42 43 44 45>;
+	#pwm-cells = <3>;
+};
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
