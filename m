Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD4311743
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 12:35:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+RyPpF9cQzS0QR+1G8h0Js7TbLck3+88M7bEaFWavRI=; b=SK4h9mamLKRjGwxpSalLh1fz14
	kxs7zu7O3ZIn3OL5W7Tmv2dZbUXMyGlOfqcMVGvJlR8HqkIDo2ZfaevdYnNOQIyF9ZL/ZDB9gsfk8
	sbCfRnz5rogUmNUGb7QdCsgA2eCy+21egtd/U7tnBFegIb3dDwvSAFc1UCL6tvQl9nwdsTBk7d4/k
	rLAmaHWSGgMz+uLwBZsZWeAE4RK+4CCOBSLGf/AuGQa0yG1UGkT0gc8TmBUgPITnFeHV3X1wpg7lW
	ULLc+3pAYxCDYi/t1KF3/p5sJ7vuYjwlOdOSONuucYDvVKPJqb0YVeOSASsolPUwdMlzgKImyZ6Eq
	E/+AySOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM93h-00064M-Nv; Thu, 02 May 2019 10:35:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM93e-00062u-Iq
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 10:35:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id 188so899496pfd.8
 for <linux-riscv@lists.infradead.org>; Thu, 02 May 2019 03:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y8299RwRcUp2oS13ZRZK7TA/HszNxbKnoI7RGJSnP08=;
 b=VW6x9cF7vcuTuR6WhIa79BZi8nH6IZ0iIoc/Yt98Tp5SavOySYwFfLmiTSz3F8atNk
 Bx4GfARB5YL+R9Vz4bqE4AyZDgYmzEqcnlUhpQZt0Amuggr7SWzBQ0f8/WxPFQA89DsJ
 0RcBTPwyj+qPPKvFMViolH2KdmkZUb/FcScCWtQpJRa9oneM7UK/Pjj7irmmr2+NErPH
 Tyyw8NY8IjSECx2rbjv0Tlai46ION1VZydHHiVG8Wli7agAI3cmf+9S25eGj/RqnzGaL
 BzvA6z1VktO/XuulHBXMsmfGTV8fWhkkMZIBVM1FByMxL9Al4TdwGwJtE6bCWQakW3M1
 ZOhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y8299RwRcUp2oS13ZRZK7TA/HszNxbKnoI7RGJSnP08=;
 b=kY7m8jxZq9E2gC2V7hDDYYcw1wF/YWkbqNMCOFFpQ7O6rUuBRQrz2Wwd8bUXd+KGuV
 w7LV3pOTZqJQtIJF93YmK6RS6aNFH4flVKznpTVov3XeuTxPD0f+TNGSnizKffXXNBIl
 saGAWyBNBfFJ3PjiPOpVaO8bfNxT/dIdluQNQY4pYn4WUsLuQiU0+OkPUGxYPdKeE6bk
 +9QNLWVB43ohd2ZZ2yDfQFstDERmtQe50MBKjXpfjcDI8AUbR7nW5fbk14NkSzJUdUSj
 XUEN2/IXkrwjJ7vgeq5Rn6Py6TGycQx1B6ZZ1w52mXOO3PoaoKw9U1uTI1IaFNLVTtzA
 XGEw==
X-Gm-Message-State: APjAAAW6MXpcd3Q06HKQNaORN5FJNhXvb4v3ycyD3U9tUA2Ekj4vyx26
 xtVkCrbjgrNilM/38RzctFyR/A8J+ig=
X-Google-Smtp-Source: APXvYqzQU1/MMFsvo7NWB+bEk3YJ2XCTwbT4XUtAR/cCVn6WJzMQQXtcEBR1FnqzrGAkeeuesPlU6A==
X-Received: by 2002:aa7:8212:: with SMTP id k18mr3355979pfi.50.1556793317446; 
 Thu, 02 May 2019 03:35:17 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 h187sm69141133pfc.52.2019.05.02.03.35.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 02 May 2019 03:35:16 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 palmer@sifive.com
Subject: [PATCH v2 1/2] RISC-V: Add DT documentation for SiFive L2 Cache
 Controller
Date: Thu,  2 May 2019 16:04:52 +0530
Message-Id: <1556793293-21019-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556793293-21019-1-git-send-email-yash.shah@sifive.com>
References: <1556793293-21019-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_033518_624538_36C26FC1 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>, robh+dt@kernel.org,
 paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add device tree bindings for SiFive FU540 L2 cache controller driver

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 .../devicetree/bindings/riscv/sifive-l2-cache.txt  | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt

diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
new file mode 100644
index 0000000..73d8f19
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
@@ -0,0 +1,51 @@
+SiFive L2 Cache Controller
+--------------------------
+The SiFive Level 2 Cache Controller is used to provide access to fast copies
+of memory for masters in a Core Complex. The Level 2 Cache Controller also
+acts as directory-based coherency manager.
+All the properties in ePAPR/DeviceTree specification applies for this platform
+
+Required Properties:
+--------------------
+- compatible: Should be "sifive,fu540-c000-ccache" and "cache"
+
+- cache-block-size: Specifies the block size in bytes of the cache.
+  Should be 64
+
+- cache-level: Should be set to 2 for a level 2 cache
+
+- cache-sets: Specifies the number of associativity sets of the cache.
+  Should be 1024
+
+- cache-size: Specifies the size in bytes of the cache. Should be 2097152
+
+- cache-unified: Specifies the cache is a unified cache
+
+- interrupts: Must contain 3 entries (DirError, DataError and DataFail signals)
+
+- reg: Physical base address and size of L2 cache controller registers map
+
+Optional Properties:
+--------------------
+- next-level-cache: phandle to the next level cache if present.
+
+- memory-region: reference to the reserved-memory for the L2 Loosely Integrated
+  Memory region. The reserved memory node should be defined as per the bindings
+  in reserved-memory.txt
+
+
+Example:
+
+	cache-controller@2010000 {
+		compatible = "sifive,fu540-c000-ccache", "cache";
+		cache-block-size = <64>;
+		cache-level = <2>;
+		cache-sets = <1024>;
+		cache-size = <2097152>;
+		cache-unified;
+		interrupt-parent = <&plic0>;
+		interrupts = <1 2 3>;
+		reg = <0x0 0x2010000 0x0 0x1000>;
+		next-level-cache = <&L25 &L40 &L36>;
+		memory-region = <&l2_lim>;
+	};
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
