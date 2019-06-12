Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1870D422EE
	for <lists+linux-riscv@lfdr.de>; Wed, 12 Jun 2019 12:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=2IE7cLxBwQ87pCYVIpeMTQonrWiw6IUHA+tR+13RQEM=; b=gxX
	op6TeupcZpXO6Emgc4P0BEzmvW+xps5VWpJ4fUIBXbW27fnMi2V5FHE+7v5MBXqxu6TMULwsRsil8
	ypK3ayyfydWv0Ch8bgCWcIzM3UGmhcxeQMV41fVlypQWuJVkhOzds4XfXe5GSlGpJZLmVDuS2lq8N
	/t595kmgJ0oEDnk7HmTUPlRWYz51/IiSC1H36FANZ7YNVjUBq/K7PckjHHd5dxEfoQroV1JHcX9pS
	ghJQhoviDrKfDTVnl4QK7sa2mM13/aHGTq7Q15OPod2TXj/d9MUYOXWkftdfzy2NMKsm/bDumOFeI
	Yhl9gBs0OfuQ9mM0I+u9TxXTjLBM7pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0oO-0000ZQ-Kx; Wed, 12 Jun 2019 10:49:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0oK-0000YA-B8
 for linux-riscv@lists.infradead.org; Wed, 12 Jun 2019 10:48:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so6485381plb.4
 for <linux-riscv@lists.infradead.org>; Wed, 12 Jun 2019 03:48:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=6OgmzXKxvgHJ1sM8mE9nEpUkTFx5pfDiK3sCa407yTI=;
 b=jlVfevWxi9+GHeQZP8m+0MbI5NR4vR+IREfTBAOj2OboeNZDVA4nxenqfLYyOKDq5F
 JeoDtJu+hrSbOEFMQjWeesrzt5vBQ2csZv990giHqN3wpTPlHjduFKCLaGqEo8UCvTq8
 QQ7BxZbf+VXSquO1Xf9dh7nIJOAfiqSIi9DLfs9NGZ9D4/hJqRJxu8m6c/wLj/vF9XKD
 5VUC8mr+iHQw6992UHBtbED8NAPFiGe1jSC42MO1sNDuIvzZXfvXGpCxvWzUQCditt4i
 iHCfvWNV63siJnF4yzudfhPzyY2Uzssec2ZOvS8HmBmgQLTZN1VVUPsYlZv9FnG1IhnS
 EImw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6OgmzXKxvgHJ1sM8mE9nEpUkTFx5pfDiK3sCa407yTI=;
 b=Q/lYxsk7Jhf2CS98s/O8Kayk1D2bYuMRYt2y0tKgft+rbfJ325sT8+Ei7US03tBWe9
 N8/fqfk4u+2mCkyNNegEoSJkwimtA3T/bGaFe6F2vSiQvNPCW/5j6tPHFsgKsmsnlEt8
 DGdemmxafngNC3BpJ+LAWYpHYLAa4Yvx+MgTVcpELjClQtICiYgyOB4tVC2vlbkzDgLD
 hRFoAmVBDP9YzKjCdLqPM9ji2U8gRfhYAov0DuWy7+1VgeG+YUssVUNpsrdF3YnszO8c
 o7gLk9S/TGExq0UpV8Z+SLw5m9GyglJyxYO/gwX0/E/c9renOqV8CirXoHfWGq5hoFk3
 1Y+A==
X-Gm-Message-State: APjAAAW2YIi5g1XYUaqEJ5g3ok7+NCYYQGq4MwRUGijSQ26Qx8yZ1yDY
 WBAhF3hvXga95UVmlk4+Nl3QHQ==
X-Google-Smtp-Source: APXvYqyRNQn4HyUUaAoD5W3dTl5pCJH+6plRQxAR5F5uu/22Q/Cjtya5G0BA+cILNrTl2XlFiIPJDw==
X-Received: by 2002:a17:902:a513:: with SMTP id
 s19mr27330778plq.25.1560336535093; 
 Wed, 12 Jun 2019 03:48:55 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id y22sm12241561pfm.70.2019.06.12.03.48.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 12 Jun 2019 03:48:54 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com, linux-mtd@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH v5 0/3] mtd: spi-nor: add support for is25wp256 spi-nor flash
Date: Wed, 12 Jun 2019 16:17:53 +0530
Message-Id: <1560336476-31763-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_034856_394282_15F4033C 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: wesley@sifive.com, palmer@sifive.com,
 Sagar Shrikant Kadam <sagar.kadam@sifive.com>, aou@eecs.berkeley.edu,
 paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch set is tested on HiFive Unleashed A00 board and is based on mainline
kernel v5.2-rc1. Its intended to add support for 32 MB spi-nor flash
mounted on the board. Memory Device supports 4/32/ and 64 KB sectors size.
The device id table is updated accordingly.

Flash parameter table for ISSI device is set to use macronix_quad_enable
procedure to set the QE (quad-enable) bit of Status register.

A unilaterlay block unlocking scheme is added in patch 2.

These patches are based on original work done by Wesley Terpstra and/or Palmer Dabbelt:
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Erase/Read/Write operations are verified on HiFive Unleashed board using  mtd and flash utils (v1.5.2):
1. mtd_debug  	:Options available are : erase/read/write.
2. flashcp	:Single utility that erases flash, writes a file to flash and verifies the data back.
3. flash_unlock: Unlock flash memory blocks.Arguments: are offset and number of blocks.
3. flash_lock: 	 Lock flash memory blocks. Arguments: are offset and number of blocks. 

Unlock scheme clears the protection bits of all blocks in the Status register.

Lock scheme:
A basic implementation based on stm_lock scheme and is validated for different number of blocks passed
to flash_lock. ISSI devices have Top/Bottom area selection in "function register" which is OTP memory.
 

Revision history:

V4<->V5:
-Rebased to linux version v5.2-rc1.
-Updated heading of this cover letter with sub-system, instead of just plain "add support for is25wp256..."

V3<->V4:
-Extracted comman code and renamed few stm functions so that it can be reused for issi lock implementation.
-Added function's to read and write FR register, for selecting Top/Bottom area.

V2<->V3:
-Rebased patch to mainline v5.1 from earlier v5.1-rc5.
-Updated commit messages, and cover letter with reference to git URL and author information.
-Deferred flash_lock mechanism and can go as separate patch. 

V1<-> V2:
-Incorporated changes suggested by reviewers regarding patch/cover letter versioning, references of patch.
-Updated cover letter with description for flash operations verified with these changes.
-Add support for unlocking is25xxxxxx device.
-Add support for locking is25xxxxxx device.

v1:
-Add support for is25wp256 device.


Sagar Shrikant Kadam (3):
  mtd: spi-nor: add support for is25wp256
  mtd: spi-nor: add support to unlock flash device
  mtd: spi-nor: add locking support for is25xxxxx device

 drivers/mtd/spi-nor/spi-nor.c | 348 +++++++++++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |   7 +
 2 files changed, 304 insertions(+), 51 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
