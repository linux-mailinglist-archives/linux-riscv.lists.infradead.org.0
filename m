Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 307D64EDAB
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 19:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gTJyNO8gIGMcNWpFDGflInX9xDXA0ytQqInWhh08aXs=; b=YLE
	aOo5xemvipSCvgzIu45mISogAj78+FOlotxE1rIo9FfSmLw6khsYuYwZC6JBZMhUMTpExiTbofyhf
	rEFIVfmy9F+G/GLakVPuBgFm0k7oCwYm1AIYyToNjxI+Zldc5b1BpuIz7J6yXl3LwMC02MUA0Jcse
	itJyKjW/Nar5z+tYfO8AL3NZykF8AO5N5Xez5oNJCbq/mAXLDvv3WRCpM9A6ASnQ5GSzwO7YLdt46
	9IP2OanXHD1uypW14EvIMvR1T1lsly3dpg4jLHZQiKIS1KUNa4J+uQYEQ0UNqFKUGgHOsHHQM3iBM
	AufRd8PHQgBDgJ4AU7gtShSdaE+DL4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heN71-0000u6-BZ; Fri, 21 Jun 2019 17:14:07 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heN6m-0000iL-4R
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 17:13:53 +0000
Received: by mail-pf1-x441.google.com with SMTP id j2so3931414pfe.6
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 10:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=cAVJVLYMlpM1X+6nsKRtAyIYN/69csfPCrR5GNpvyWk=;
 b=HmyRHspEmnFmc6bYH0mcIxtmVoCG4E/7Na+MHf887uUTVRbj1E9lKP6pWZweKUsg1X
 WplLECJZQLyYro69Uj75TjacZgzrM52CBI3qhH77U0uG51rrLdr7q44xdGHBu3pzlsGk
 4b1nY+FsXWQciU7loQQ5Dvozx2E3/mxv0AHWcTgtCzc0NSIxGwC9aMahSRfgKSKZcYGx
 LVd9WfCKrPZddURlTfj7CTFbkwxJeHPznvbmvKYYolx7DhVjkT0D3IoV29AEORev7LUE
 QxuU+mVXs/feV22t2F5gVjGZ5Fvt5E5a+EMD0L+N+yiiWoBy36VHYxW4is3TKW7C04HT
 irXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=cAVJVLYMlpM1X+6nsKRtAyIYN/69csfPCrR5GNpvyWk=;
 b=YyG0EtdcdGCGJCgOTwFUviO1rUqpaTN17bqoxVqRD9t7hxCA8UesRpgZY+dnYA9vnv
 SdYWEMf/CsHdUTPxPzMQ5/iGHxUSb3HoIInXSOPoE0esP5AvM2eWnakZ+4oCOocEDVp0
 bTfK0UbBcGl2bXP6VIPmEAfXs4VoJlc9Wo2Xe/0cxtaZxdKMJ8vkt8Q5dREqSmW7sl3x
 6xtVDzJDKX1ZWq8V9QwSJELowX68kEOca7V/76AQ4ZCJNXJEnvO/fnJy9tWqC34VE1xF
 WI8qox/RK4BLM5559HPionvuVTPxBAykzUlYFaUwUPVm/eRD5s8Yrr93yHDPkTOT+cuJ
 qyaQ==
X-Gm-Message-State: APjAAAUFf1Uig7RrRtkexTVOFMSYAmTX/szibV9RIMpWLjdPxeTW7jxY
 B3Dn5y19et9naEbbE7SUG2OdhA==
X-Google-Smtp-Source: APXvYqzPHD9SouhFBvVoB7Ko52w+lG58OoHxYUuvUiO43hMwqmb/kI3RrEjuhpsiBOQvpaZ5fzJy6Q==
X-Received: by 2002:a63:5202:: with SMTP id g2mr19423642pgb.386.1561137231320; 
 Fri, 21 Jun 2019 10:13:51 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id t5sm3496190pgh.46.2019.06.21.10.13.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 21 Jun 2019 10:13:50 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v6 0/3] mtd: spi-nor: add support for is25wp256 spi-nor flash
Date: Fri, 21 Jun 2019 22:43:28 +0530
Message-Id: <1561137211-12406-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_101352_185753_C98F9F80 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: aou@eecs.berkeley.edu, palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch set is tested on HiFive Unleashed A00 board and is based on
mainline kernel v5.2-rc1. Its intended to add support for 32 MB spi-nor
flash mounted on the board. Memory Device supports 4/32/ and 64 KB sectors
size. The device id table is updated accordingly.

Flash parameter table for ISSI device is set to use macronix_quad_enable
procedure to set the QE (quad-enable) bit of Status register.

A unilaterlay block unlocking scheme is added in patch 2.

These patches are based on original work done by Wesley Terpstra and/or
Palmer Dabbelt:
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Erase/Read/Write operations are verified on HiFive Unleashed board using  mtd and flash utils (v1.5.2):
1. mtd_debug  	:Options available are : erase/read/write.
2. flashcp	:Single utility that erases flash, writes a file to flash and verifies the data back.
3. flash_unlock: Unlock flash memory blocks.Arguments: are offset and number of blocks.
3. flash_lock: 	 Lock flash memory blocks. Arguments: are offset and number of blocks. 

Unlock scheme clears the protection bits of all blocks in the Status register.

Lock scheme:
A basic implementation based on stm_lock scheme and is validated for different number of blocks passed
to flash_lock. ISSI devices have top/bottom area selection in "function register" which is OTP memory.

The changes along with other relevant patches are available under 
branch dev/sagark/spi-nor_v5.2-rc1 at:
https://github.com/sagsifive/riscv-linux-hifive 
 

Revision history:
V5<->V6:
-Incorporated review comments from Vignesh.
-Set addr width based on device size and if SPI_NOR_4B_OPCODES is set.
-Added 4th block protect identifier (SPI_NOR_HAS_BP3) to flash_info structure 
-Changed flash_info: flag from u16 to u32 to accommodate SPI_NOR_HAS_BP3
-Prefix newly added function with spi_nor_xxx.
-Dropped write_fr function, as updating OTP bit's present in function register doesn't seem to be a good idea.
-Set lock/unlock schemes based on whether the ISSI device has locking support and  BP3 bit present.

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

 drivers/mtd/spi-nor/spi-nor.c | 342 +++++++++++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |   8 +
 2 files changed, 294 insertions(+), 56 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
