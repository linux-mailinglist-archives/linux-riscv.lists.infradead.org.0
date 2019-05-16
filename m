Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29C91FEAE
	for <lists+linux-riscv@lfdr.de>; Thu, 16 May 2019 07:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KPHeDhrwTUBrz/l7E7cnT29BC7Q8kgnw1OQk3R2FM9o=; b=gyk1hOjlBEAYxO
	e0rIi4x6nc2khTTVYednSOruI+834+WiuZ+67qCrfY+tRpcHLMO1FshuLFvL3iJ/F9rzV1EjE4owj
	vB3+GXXqduir7sXtRLd5LerYi9qpr4omz2VeqlhmW5U/cSfKRPsW91TB5KkCVmIXXHzG/EKAWTdhi
	5sfVJn0ABlbj8327fKXywCM2zWFW+MvWN5XFvFZicjUtD08zK0K3XUnT+GK5Xbl4LiPX/5s529Gr+
	xb9mUSdngdTPx9HyWGawNMihopWNuLZXuD5QEukTAED0QNXF+a9/HfyI5o5tnEnbecHuzWpt2mmFf
	Jd8+fmSp/Rl3DXkgz4JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR8dr-00064c-16; Thu, 16 May 2019 05:09:19 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR8do-00064J-3t
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 05:09:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id a5so969742pls.12
 for <linux-riscv@lists.infradead.org>; Wed, 15 May 2019 22:09:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=0q3a/odCRoCVA/nETkq3PjFBVKS7tpFQuK4PfOsccMA=;
 b=gjl0gVM2RiW2MI8vn6Z6445MzADPeIBpy+SffYn5OlaoPRK5EWAL4rSkmTGBrfdksE
 JqXNbRRGf4Zkt6QLKNjQ5wzqXtz1+grJjn7fOA29/3ZvtD3WxwfqTJ5CJ4W0628sDFgD
 Smb8+d2foPXtuPggJa9hK1wswHPOsvSaDWJ8rnKcoegy0rziYJcaOjc3qflSDVKL5WWi
 Tc6lh6RB/y4+TAUokO3X71VPatwS8Qva4O7KsJ/7Lvs/3x9Lj1mBHpUDYUS1Na0775FK
 v/ldDtSacMPH3xtr6Pq/uYWHynnnDPfMnb71guaHA3zhxUtG1jZ91vUUQEzkPTNCfru8
 npkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=0q3a/odCRoCVA/nETkq3PjFBVKS7tpFQuK4PfOsccMA=;
 b=ksuBUMy/n0lFzJtQiDcM7VmGVbH7zXC1P/x+/ox4cHuUmewniI/dkKogXCw7GoFN4Q
 uVnU7wtWoFgCuVlypNAtiPLbe+YjiuV/c9h9T75gATaS09qWjHlxz+2d3n5hOrbPl+Kd
 Ylk9Yj+jxi+p26ldOFjt1iLKbl8I8IQ0T50GCX16rWGBB6Dst/FQhE9bPkrg+XnkE329
 fV6FCpig9jOhK9IBVLzJniit5Fd4jw5UqUJT3J21L7tLzsFFegIaNWJpSKDZ5Pa3VW5G
 GY0jSpIwfTSzqOz3JPP4v2Q3+H4cfDFjOul7vxC6mSeULCkctkzdeTrRv82Dbkt701Cj
 Jajw==
X-Gm-Message-State: APjAAAU/5atCwBWvOMLJ5L/nxvkkeQyz5z+pYLxGf5V1cuD+0pJAZDLm
 OQxt88V9B+wKys+X0YEeeQrZbQ==
X-Google-Smtp-Source: APXvYqzGkhtdoXphNVBJgmn2RC0DNEZV+BpRn1iKw8kD5ieq2SAEPT5s4FKXUABjJo0hGXLltMzkaQ==
X-Received: by 2002:a17:902:b184:: with SMTP id
 s4mr10059937plr.46.1557983354809; 
 Wed, 15 May 2019 22:09:14 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id u6sm5929531pfa.1.2019.05.15.22.09.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 15 May 2019 22:09:14 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/3] Extend dt bindings to support I2C on sifive devices
 and a fix broken IRQ in polling mode.
Date: Thu, 16 May 2019 10:38:37 +0530
Message-Id: <1557983320-14461-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_220916_223780_339E9FFE 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch is based on mainline v5.1 and extends DT-bindings for Opencore based I2C IP block reimplemented 
in FU540 SoC, available on HiFive unleashed board (Rev A00), and also provides a workaround for broken IRQ
which affects the already available I2C polling mode interface in mainline, for FU540-C000 chipsets. 

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated.

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and TIP flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and 
appropriate device node is added into board specific device tree as per the information provided in 
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-sifive.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Patch History:

V2<->V3:
-Incorporated review comments on v2 patch as follows:
-Rectified compatibility string sequence with the most specific one at the first (dt bindings). 
-Moved interrupts and interrupt-parent under optional property list (dt-bindings).
-Updated reference to sifive-blocks-ip-versioning.txt and URL to IP repository used (dt-bindings).
-Removed example for i2c0 device node from binding doc (dt-bindings).
-Included sifive,i2c0 device under compatibility table in i2c-ocores driver (i2c-ocores).
-Updated polling mode hooks for SoC specific fix to handle broken IRQ (i2c-ocores).


V1<->V2:
-Incorporate review comments from Andrew
-Extend dt bindings into i2c-ocores.txt instead of adding new file
-Rename SIFIVE_FLAG_POLL to OCORES_FLAG_BROKEN_IRQ

V1:
-Update dt bindings for sifive i2c devices
-Fix broken IRQ affecting i2c polling mode interface.

Sagar Shrikant Kadam (3):
  dt-bindings: i2c: extend existing opencore bindings.
  i2c-ocore: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC

 .../devicetree/bindings/i2c/i2c-ocores.txt         |  7 +++-
 drivers/i2c/busses/i2c-ocores.c                    | 41 +++++++++++++++++++---
 2 files changed, 42 insertions(+), 6 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
