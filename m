Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D8316722
	for <lists+linux-riscv@lfdr.de>; Tue,  7 May 2019 17:46:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xrEaTNZ7I4jteDl8CXVUK+RPRRoM5MWQb2DeHkALDGI=; b=ZwuaYfj0UqUThs
	jjfYg6xx2GGrBiEn+KxnhLAaUJzjeDK1obYve7p1RQFfJHPSfktzS/mT3IBO8jNObfKlnhhfsEhn7
	OrQtQSW3pt/QrYT1uMDDP1uSQeZ2xsisSeKCwavuABoozXPQa1zk1u0CDbzs9QwfqSmFFGc8q32EW
	0jmy+hIrdKDWlgTtpyLtrDwpN659uGtYahOO6+s0zxdjRYKJke/wL5KBAYGI75KMVWF+/gi1mXvgP
	VXrUl1FBDpJCFoTMM8kem88bWb0KmizNRd/El/Lqz2Yy8qsWZY/VpthNNRyxxPyHhfVtu/FpHtLQb
	W0q46HmCt1ttOR4x91Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO2Ir-00046P-In; Tue, 07 May 2019 15:46:49 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO2Ii-0003yV-EO
 for linux-riscv@lists.infradead.org; Tue, 07 May 2019 15:46:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id d21so897383plr.3
 for <linux-riscv@lists.infradead.org>; Tue, 07 May 2019 08:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:from:to:cc:subject:date:message-id;
 bh=AyxScH4NIE4sDe1p/0kXATnx4Yd1gHetw4ugG+CXftg=;
 b=LcspjzYTpm18fBxDLtdVlOSLYgih/UOIl8y2xm86Shd54JuFLAbjRuZJsh7/UJROFW
 TtPG3dZCOLd3NNoEul47o9myIkAwvByEQcLu1SVAeEFQ3dYwmEQe2TjcZkXAt8F96qzm
 m1bi5u09yD15mF9UitMHo4z+MNjDAqwkwSCXkNMppq2snlQsOkVdmKMDPENoU43mV7+L
 RzfwzYC8qqQM7ryF6MyV/7SwGQIPHoB/YzUQMpD8PmNZ4S8CadI+FEHvI2Sbv59AL5vH
 C1i10OgAXmZLSd450lkDBFZGCG8h/znBvgvuZLKNKvyS6oFP0RmLcCe3dPQ26CPTyW9W
 x7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=mime-version:x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AyxScH4NIE4sDe1p/0kXATnx4Yd1gHetw4ugG+CXftg=;
 b=WJJGJLWNcr0hhThhGO0VidulPsFXzSKeL2ucS6nuRhFFbjHVtErz3zPhCD1FWFV0B5
 QjkmelNH0uHJD/HO1bESxcR+IMV2POsg5Pl9KHw3y8mVI2bLUzE59x2smfWljdka+OlD
 RUMG25+17DXv1CBLVbaVN1YHQ2S8eDHoX261snEwkXMpvlRl9GfEdCUThh6VWauC/GgB
 vTMMiTfiu92syAEXT/WaC0vozL3maTdAttQnN34Wt6+VnZZd/M9hMHq0k+KhKwTaf+P6
 qFlJ3hqxk42huSSLeDpF506SphFfeRednIJzVBId3eNM5PlgNbrpjy6y0zYTFqiKSTeV
 IAMQ==
MIME-Version: 1.0
X-Gm-Message-State: APjAAAWB2D7T7scy7YWSUE8RlNyt6JZH90fEusdNbgfpC7kUGt81Gp9/
 vlg6O4HH2bySXZbwDqzcwT/J/5Io8dsNkMBkbLZh3q7OH+C0oColbW9wAzFv9/+GF+jb5WyPmsD
 ESz4CDkbiZLzQDs/oGztAnA==
X-Google-Smtp-Source: APXvYqxkIWDXrclgUoj+jqcoyhO6CLT/D3zJ0ThibTrmWBC8R5Y1pe8PKcAAb/jfMzxK3ee5u+CN2w==
X-Received: by 2002:a17:902:29c9:: with SMTP id
 h67mr41070276plb.114.1557243998932; 
 Tue, 07 May 2019 08:46:38 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id 5sm15482096pfs.17.2019.05.07.08.46.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 May 2019 08:46:38 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at,
 palmer@sifive.com, aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
 linux-mtd@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH v3 v3 0/3] add support for is25wp256 spi-nor device.
Date: Tue,  7 May 2019 21:16:00 +0530
Message-Id: <1557243963-14140-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_084640_485475_9C0FAEEB 
X-CRM114-Status: GOOD (  10.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
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
3. flash_unlock: Unlock flash memory blocks.
3. flash_lock: 	 Lock flash memory blocks. 

Unlock scheme clears the protection bits of all blocks in the Status register.

Lock scheme:
It is a basic implementation similar to stm_lock scheme and is validated for different number of blocks passed
to flash_lock.

Revision history:

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

 drivers/mtd/spi-nor/spi-nor.c | 110 +++++++++++++++++++++++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |   2 +
 2 files changed, 111 insertions(+), 1 deletion(-)

-- 
1.9.1


-- 
The information transmitted is intended only for the person or entity to 
which it is addressed and may contain confidential and/or privileged 
material. If you are not the intended recipient of this message please do 
not read, copy, use or disclose this communication and notify the sender 
immediately. It should be noted that any review, retransmission, 
dissemination or other use of, or taking action or reliance upon, this 
information by persons or entities other than the intended recipient is 
prohibited.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
