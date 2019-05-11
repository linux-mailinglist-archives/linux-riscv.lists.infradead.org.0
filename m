Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 513271A765
	for <lists+linux-riscv@lfdr.de>; Sat, 11 May 2019 12:08:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=i3ckFO1ozuB1TBYIR2p0gNOqYIxAkHClnD0UX8AIyNY=; b=EnF
	ATLklQx4m0xBegLJBQ6EesN9YFE0pRYxpQI0oEFv6fUOaFxYcdi4voF4lJteRDCfsjXejfmIMHnk4
	hr27vV9qxb0C+IwGBQ+SNo34c/FzGRsfkP21EXRBvUEmyiwt4eldVr4ERAP63yD54ZQ3g5DeTL3rO
	d5XeDHZinDWsM8kjZdpRey8Iy/8O/icOxAXGMSJPBziPkMYmiu0jQ2hF3SUnQM/3CvmuLr7YeT2tP
	wQY91lgXta9xoUycaFRs0LX2h2lt0P38pHi7/oRQIKOHXBo52NQVrt0k68wIx3ChsDJrwyJPeAbQQ
	572dGdyB2C4ShoI9H9T0gyqj4bPUUGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPOvh-0001b7-Pu; Sat, 11 May 2019 10:08:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPOvV-0001RO-TL
 for linux-riscv@lists.infradead.org; Sat, 11 May 2019 10:08:23 +0000
Received: by mail-pg1-x543.google.com with SMTP id a3so4236280pgb.3
 for <linux-riscv@lists.infradead.org>; Sat, 11 May 2019 03:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=E5geVYX9r/xsvJ70+OdlPhioxAfQpMPDLT7rfOEjAm8=;
 b=LtxOhFbURtgfMCom19ZCiUacoeYWIn8cJxzwlQharVdF3wmpg5BQQuJgU2AKE3bD9y
 oB1oo/3YjImBtD6YKyU6JEGvVVLjyerFlIoZGngZwv0eWTTldIl2wXbsDaGIg6L983Tc
 x/TeeMqAXUoSn+6nWuTbZ2DkQ5EC6emHROz98kmohi824KJKuwujwozDF3m92yAEZEMH
 fJFNFo97kek7dQ+6ExSm+DYnPbVu59SlVr+o7L1OkplFl6m3qpCWGxGOL4Y2ce4jTEmY
 u+DbGyqPRGL5uzyhLEja+rJQ+pA0f4yoOSIZ7flZnPz/mU/aHc+jD7thzo4p1x83kcOM
 76+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=E5geVYX9r/xsvJ70+OdlPhioxAfQpMPDLT7rfOEjAm8=;
 b=trTby6kwPelZyCGLCTASPHTwsyoYWlcODAnEPWtaMXB1wnlX0DJ9j5K4Vb2DDjTuK9
 X/ELx5nqRD4CYWCB9o2flZ7vq/P6dWOovWS+cWcf0bHM+mdiaM9MsnYWSyPmFb9wMhin
 abD1NDbbuSrMVvPOG05wQkJ2eyx8dq7BsOdYHdHyk3EnmETLyQA9upWpkHPhXyhLGBXG
 bFE/SEn2ghnUfOKkbJwPxhTYf1Ki9Xky0y42F2ORZha+z+Qkhdgskwyz6bqvfpBG63V0
 xaFw5cvrxFFGYrQ35kppzhqU932lXjcP6MPm8bbvXahBE0c55k6f5yooKilU1kKq6oBE
 srbw==
X-Gm-Message-State: APjAAAU7DoVA5VASqsYCufenSgfP6oMpPZxIY5piImGUNn+X+EHSD+IL
 Vecz/fB1qX3Lqim3bPzVVTW3VA==
X-Google-Smtp-Source: APXvYqzpwuyZCUbxoXTRRlV2LAERUlKeBv3bavf54tfet+HlCK62FtD1WBpOvt13aXglcRjgzEbdNQ==
X-Received: by 2002:a62:6444:: with SMTP id y65mr21031241pfb.148.1557569298344; 
 Sat, 11 May 2019 03:08:18 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 c129sm16951836pfg.178.2019.05.11.03.08.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sat, 11 May 2019 03:08:17 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at,
 palmer@sifive.com, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v4 0/3] add support for is25wp256 spi-nor device.
Date: Sat, 11 May 2019 15:38:05 +0530
Message-Id: <1557569288-19441-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_030822_009979_91826A80 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch set is tested on HiFive Unleashed board and is based on mainline
kernel v5.1. Its intended to add support for 32 MB spi-nor flash
mounted on the board. Memory Device supports 4/32/and 64 KB sectors size.
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
V3<->V4:
-Extracted comman code and renamed few stm functions so that it can be reused for issi lock implementation.
-Added function's to read and write FR register, for selecting Top/Bottom area.

V2<->V3:
-Rebased patch to mainline v5.1 from earlier v5.1-rc5
-Updated commit messages, and cover letter with reference to git URL and author information.
-Deferred flash_lock mechanism and can go as separate patch. 

V1<-> V2:
-Incorporated changes suggested by reviewers regarding patch/cover letter versioning, references of patch.
-Updated cover letter with description for flash operations verified with these changes.
-Add support for unlocking is25xxxxxx device
-Add support for locking is25xxxxxx device.

v1:
-Add support for is25wp256 device.




Sagar Shrikant Kadam (3):
  mtd: spi-nor: add support for is25wp256
  mtd: spi-nor: add support to unlock flash device.
  mtd: spi-nor: add locking support for is25xxxxx device

 drivers/mtd/spi-nor/spi-nor.c | 345 +++++++++++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |   7 +
 2 files changed, 301 insertions(+), 51 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
