Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3CA823981
	for <lists+linux-riscv@lfdr.de>; Mon, 20 May 2019 16:12:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jiMpu6bq5qoY1s0lOFmQ8zF+6j8lcarsW7orZvX9iOU=; b=hLqY7bGogB9fGb
	eNc9ocMx1Q8d13zNZ5wCcuQl+E2v2hF2fgs212L+K79b26/pc99lXk1Wi4KdynDVYwndKknls4LZ8
	m4z2aRkIA84E0lxaZvSeZ/rTjN5c2MlTA8RTjTlQkqP64ESzVja2aK/Zf3tKvNkoVv43ci7Ji7i3W
	e+feQFG82bhIOFhGlBxp4aJL+wpeCggb1KOFbT8EoXKapFMe/A7AvG+8DV3EaVw8KuB6bo+Kymf8C
	F54i+VA1rh1IO0p8T/zXCj11vOD7YxbumG23IoiiT+B995pErBKqDD9fq73x+FrGZvnEwfn/mApaL
	vDdpVx9ZXoCcm2H+0X1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSj1X-0008Ko-QT; Mon, 20 May 2019 14:12:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSj1U-0008K4-Ai
 for linux-riscv@lists.infradead.org; Mon, 20 May 2019 14:12:17 +0000
Received: by mail-pf1-x443.google.com with SMTP id s11so7280012pfm.12
 for <linux-riscv@lists.infradead.org>; Mon, 20 May 2019 07:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=nGtttgXFEJ1HOgo8bh4Lp5/Nmp2dywuBtKSOZng5Qbc=;
 b=c6d0ZkgL2saozGONzGCnFEQjAWNRdRLaTLfi3lW4z4qkcqrrTV7g5av3Ok3O7OECou
 3yYApsOiPp7tG5FkOQ4PPTJtiqNcJPVlgF1cEAycAO5AY8GaRxqh8qTbxNUu8X33kc6a
 eFXxuJ89V7opU+5GNVeMDSpmGQL3B+H+HegVtp2eTgUqOiBmZT7NteugVeFGYIXw5vOI
 7m/RrnkVU9PGZTgK4NPef0DQ8yWtFqG45q+90e5F+UhN1mRxdUO5qcHnDzAfon4dxER7
 Uuau/plRmvrgjj99S1LjTivrRsQo14Qx6dL9uWaBjimH9GPvRY+mD4WUFuyAHY8euVap
 ethQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=nGtttgXFEJ1HOgo8bh4Lp5/Nmp2dywuBtKSOZng5Qbc=;
 b=d53PiJOCfYYMFSuRU5NFHJgKPkS7+j30IHTi1WtzXZ5V7AEfNfb2lPAA0vd3SCtHPp
 BeuekyDnjfQeECAXSvdRX/cM0hJP3yAF/55WOrghg84NxoE7u93Hsy+K+T2jWF7Qylt0
 Acgkj+tlF9uBa9QdcUt7L47u0rhEdBjxcAU1GFRKJo7k8KdgCt0s58tx8gaF4thUJu8g
 dYLQz27BcSH9PB+DdvVwmnGl0qvaYG7WkPzUYsIU5ILppu9IVukyJdD8FGJfqyqsxAxY
 QSnYAWAVv7jf5aIHB3nsKiS77X2DY/X9UaugbOGvre9JX0Qwq/TQd7FOmLli0gm98x0O
 /WmA==
X-Gm-Message-State: APjAAAWYTmxGzHzp83bL0fMCPMVh6YdLva6aPsvV8LfjFLYT7ePQaqOO
 cKVXMd4qS7JPWZLnRdekAqFAdA==
X-Google-Smtp-Source: APXvYqzDhGlszACUDMjZoW+0B0CqS1xGBQilzDwKmDvbLOxQ7SIgyDw30Jflw2tbu6Wq1eYPuirj4w==
X-Received: by 2002:a62:6341:: with SMTP id x62mr79597104pfb.63.1558361535563; 
 Mon, 20 May 2019 07:12:15 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id a9sm26388248pgw.72.2019.05.20.07.12.11
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 07:12:14 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
 andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
 sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/3] Extend dt bindings to support I2C on sifive devices
 and a fix broken IRQ in polling mode.
Date: Mon, 20 May 2019 19:41:15 +0530
Message-Id: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_071216_425138_498BBD10 
X-CRM114-Status: GOOD (  10.64  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

 .../devicetree/bindings/i2c/i2c-ocores.txt         |  7 ++++-
 drivers/i2c/busses/i2c-ocores.c                    | 31 ++++++++++++++++++++--
 2 files changed, 35 insertions(+), 3 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
