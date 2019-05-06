Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B181488C
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 12:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=VTtyZttv3kkzwE+ruzFvkYfTRW1m2qBAGbv+7o3qL1A=; b=KMJ
	Pdqox47HEWhfZ58UvnckLAJIN3MiG95ylGslmI7NSGxzTm7R+vvjInKWJpz5qnR8uY1UneYKeKzRw
	pNwDHWm1QCacwMkoZFZqpSmciGVeg+WAYYkHzPfzYX4Uqp1c8DbDLtXBqtEW9xSVKAmJmFCOcG1m8
	NzhlLaOzVnReMKXK1AcIkS0uG16udB52oCSBF+ZvezYSF+5FJu+2V8ktulObcLITDdJa55vtrJ/hE
	tp7S8dO15pt2mqXsI1RUE7ohyBWw7OTQV9Z2LOgqunLyEgKv1TYiyNOHizRbszLDvVZm0SDJPNRZJ
	I/EhP3W/nXMwKWitct6+ilKz7XaiNKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNbBM-0003rZ-4c; Mon, 06 May 2019 10:49:16 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNbBD-0003qQ-W9
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 10:49:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id x15so6171818pln.9
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 03:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=BRC3Z3+UxcLDFwyiUMPxf4Qer+1eOXAYqQrSL6zMVrc=;
 b=P8BZuNbzW6NxX/w1mub6qkbcIgZKE08lp7r2HwhPmLvc2eHKVVsvY9aALR3r+SJDxR
 3GzD3TqYIgVv74EvjLjuR0WOfZ+RYFDEZs1YGYqFk7pw9wVcNOE4iK6wr4izhdDknx/1
 WFcXo6aai/nlS4FLPaDPGgtIqy1k3wc9YfSDKoQl5QCLoLNlx71/VyKKaJzjr50oBPV9
 c0pXgfklT4MbACS7chlFLjwdGwrrMXVP/6F3R4vX08BxmnsGMr/qL7VOkEmKNudpo9XM
 F5eJDuPCjNXYVp2Nxs48DuD5qZb7DeNIfYypFYLhwXybkiMhiB++QlKWAGvnzjPbbl3g
 h2ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=BRC3Z3+UxcLDFwyiUMPxf4Qer+1eOXAYqQrSL6zMVrc=;
 b=o4OoIvx/8SP0/nxtMFn7crOKjZe4IZZwuvI2965nYsWwzFH5frRHJBszWddJ6lo41J
 rSp5EGRk3sFHbfwaualitQUFOWjwyOJYmFnAg9RoEc/t3t09Xol9fucEicbQLy9O92le
 934F4vkTEJUW+N3D+rxfxHbHg6pU25bQXVprAPfZQlndGNCLFFEjUzDy4S2sYhvT7gM9
 8EC0/i6VdyPZ6VNv2wH5whC/wQUIGsMXHaxH8jV2kfEImCEPDqtlMBFPc4Ae4iyVS5fL
 Fzg0WD95WJgABaRRlog+cB/nF9t3ZgYsBkw1os704NXdyv4aYCTkDU3hHP+NhDWgiM9V
 8/eg==
X-Gm-Message-State: APjAAAVfaYec2hsr2k07sWPthtrDLf3Ghe/uCx2VBqrMmycr0YTGm1Ow
 +pbNIRBpdSJ9Lj2VsVLfo/rJn8Y8HTU=
X-Google-Smtp-Source: APXvYqwXKlvXYBYhWYyONyfIJ8A2MOOKh40u2Bmp1IQvp2bhgWtuZDxtb1uAg+BW4JM6GkBoXY1tIQ==
X-Received: by 2002:a17:902:2bc5:: with SMTP id
 l63mr32159119plb.202.1557139746900; 
 Mon, 06 May 2019 03:49:06 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 p67sm21662257pfi.123.2019.05.06.03.49.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 03:49:06 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 palmer@sifive.com
Subject: [PATCH v3 0/2] L2 cache controller support for SiFive FU540
Date: Mon,  6 May 2019 16:18:38 +0530
Message-Id: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_034912_087654_08B93981 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 afd@ti.com, sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>,
 robh+dt@kernel.org, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

This patch series adds an L2 cache controller driver with DT documentation
for SiFive FU540-C000.

These two patches were initially part of the patch series:
'L2 cache controller and EDAC support for SiFive SoCs'
https://lkml.org/lkml/2019/4/15/320
In order to merge L2 cache controller driver without any dependency on EDAC,
the L2 cache controller patches are re-posted separately in this series.

The patchset is based on Linux 5.1-rc2 and tested on HiFive Unleashed
board with additional board related patches needed for testing can be
found at dev/yashs/L2_cache_controller branch of:
https://github.com/yashshah7/riscv-linux.git

Changes since v2
- Add a header file to expose Macros and extern functions
- Remove all single line functions

Changes since v1
- Mention the valid values for cache properties in DT documentation
- Remove the unnecessary property 'reg-names'
- Add "cache" to supported compatible string property
- Remove conditional checks from debugfs functions in sifive_l2_cache.c

Yash Shah (2):
  RISC-V: Add DT documentation for SiFive L2 Cache Controller
  RISC-V: sifive_l2_cache: Add L2 cache controller driver for SiFive
    SoCs

 .../devicetree/bindings/riscv/sifive-l2-cache.txt  |  51 ++++++
 arch/riscv/include/asm/sifive_l2_cache.h           |  16 ++
 arch/riscv/mm/Makefile                             |   1 +
 arch/riscv/mm/sifive_l2_cache.c                    | 175 +++++++++++++++++++++
 4 files changed, 243 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
 create mode 100644 arch/riscv/include/asm/sifive_l2_cache.h
 create mode 100644 arch/riscv/mm/sifive_l2_cache.c

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
