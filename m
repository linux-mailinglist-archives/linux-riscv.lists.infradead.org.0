Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 818602D4B8
	for <lists+linux-riscv@lfdr.de>; Wed, 29 May 2019 06:27:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1GdWzUNUgB/J/OB/YbwAqGRs80mxdZ2ChflNxQw8nSA=; b=T4dRdwKUL1MwkJ
	LlRYrNjaFTZWUk3cteBESumcunnatF7eY6DOJqAdoHIJhJb81hyflDhwCGSBsImY4fDmZfhZTc4E9
	WL5PRfkHVXHwyhBGKw/6oV2e5VYJqVZaqOkol+sMs68VQlsnZMm95yjv2xRes2eBRZIo7tesArwMT
	SR4823+OsFXWhTTOdd0/X8XkYkNIm69Nr5PD1f/R/M50EiJDO0W/eiX+Z8Zufvd2mHg0JA6bV4w7b
	xhGiNa3apI9/qC4X4nl/F779DVFvX4+KEeD2j0NiOR1wixbktglgHznK9tyqmha2DREa8a9kuXaqb
	VeyoA4JRGFy2SRjxhirw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVqBp-0005Xb-Ed; Wed, 29 May 2019 04:27:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVqBl-0005WI-IY
 for linux-riscv@lists.infradead.org; Wed, 29 May 2019 04:27:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id g69so479573plb.7
 for <linux-riscv@lists.infradead.org>; Tue, 28 May 2019 21:27:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=E/FfJ9JkdQ/HCjWM9Sz23LCVJi+YnVXF/seA9CC8MAo=;
 b=KugZ1oePx2CstNh1GXd0AZ+8Fuc2uWVFyrynjgaCGyNYNrVtA2IlXtHD1XJDoBgHXn
 uCWNLO85u1g/zk/nGK4pfssE1/y62iAE5ZcVYe/Tn3pxy9RpnUvtBE1+hkBg3lli16CG
 nTY6+IfB7xZpSCzSp6S0yZyzAZxa3To9FBHF0eAUsMdTg6u5TlwcXiSJfqfe/M9tBysF
 bAYyt3E93Msxlbpjb+8FFVRQ0T2q7gS7Nc7bQEleRSdhLXZ5pPkps23KQcrtNaRafpMB
 wnrnRx99I8T6nYI4+pAnNfWv4OvuUcYl0LM0zHsLArKwRwwaVAMpPo8cTN0Nf1siPkTY
 tk8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=E/FfJ9JkdQ/HCjWM9Sz23LCVJi+YnVXF/seA9CC8MAo=;
 b=a2c/8dpWpiBQNaz5njFvh29GLoQmHh+Hlv02OtdIp1V3y5Zy3omNA660zD2pRk6R2d
 Xxt3BEE1XF61YF09iQz7LMuf4y4XR0W0CN7eAi4tlpcCxsUcsA8gfI3EOeLYFaTBh+Ei
 VyGkOGseop533CX9kthS03vitlGSag5MWEexjG2uR09so5/XIqoQUC7p3tFZqlwtjFTs
 RzHZmdpIWtzc0seR4GwgfDk2lGLqiWTapIe/3Vnyxv2nl7DSJ7c0Vp/loNsMkHvphsQo
 fybAX0JbR7HQJV3x38pdxNKvQJm27zU+j1aeO5nstGUsFzkrm4NLES/MNbRtYkJ0rVxy
 /zNw==
X-Gm-Message-State: APjAAAUr0/m/+MjZ7QYv5SjoGAj1nyTjWWQP8Ejka2cE5orLTQ0l+5V5
 tg/1oohqAdStUePN1PlpZCD0Vw==
X-Google-Smtp-Source: APXvYqwnbELoqSJmyJKVAIjJfQY31S7rm+WEh1T4FZbyNWDf6pVyw0tDbPJOlLLOf8znM1oEu9R9tQ==
X-Received: by 2002:a17:902:b606:: with SMTP id
 b6mr141195207pls.100.1559104064751; 
 Tue, 28 May 2019 21:27:44 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 c15sm16444591pfi.172.2019.05.28.21.27.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 28 May 2019 21:27:44 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 0/3] Extend dt bindings to support I2C on sifive devices
 and a fix broken IRQ in polling mode.
Date: Wed, 29 May 2019 09:57:24 +0530
Message-Id: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_212745_617982_64107C34 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch is based on mainline v5.2-rc1 and extends DT-bindings for Opencore based I2C IP block reimplemented
in FU540 SoC, available on HiFive unleashed board (Rev A00), and also provides a workaround for broken IRQ
which affects the already available I2C polling mode interface in mainline, for FU540-C000 chipsets.

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated.

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and BUSY flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and
appropriate device node is added into board specific device tree as per the information provided in
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-ocores.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Patch History:
V7<->V8:
-Incorporated review comments for cosmetic changes like: space, comma and period(.)

V6<->V7:
-Rectified space and tab issue in dt bindings strings.
-Implemented workaround based on i2c->flags, as per review comment on v6.

V5<->V6:
-Incorporated suggestions on v5 patch as follows:
-Reformatted compatibility strings in dt doc with one valid combination on each line.
-Removed interrupt-parents from optional property list. 
-With rebase to v5.2-rc1, the v5 variant of polling workaround PATCH becomes in-compatible.
 Till kernel v5.1 the polling mode was enabled based on i2c->flags, wherease in kernel v5.2-rc1 polling mode is set as
 master transfer algorithim at probe time itself, and i2c->flags checks are removed.
-Modified v5 to check for SiFive device type in polling function and include the workaround/fix for broken IRQ.

v4<->V5:
-Removed un-necessary checks of OCORES_FLAG_BROKEN_IRQ.

V3<->V4:
-Incorporated suggestions on v3 patch as follows:
-OCORES_FLAG_BROKEN_IRQ BIT position rectified.
-Updated BORKEN_IRQ flag checks such that if sifive device (Fu540-C000) is identified,then use polling mode as IRQ is broken.

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
  i2c-ocores: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.

 .../devicetree/bindings/i2c/i2c-ocores.txt         |  9 ++++--
 drivers/i2c/busses/i2c-ocores.c                    | 33 ++++++++++++++++++++--
 2 files changed, 38 insertions(+), 4 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
