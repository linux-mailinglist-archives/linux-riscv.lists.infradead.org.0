Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D6F55D64E
	for <lists+linux-riscv@lfdr.de>; Tue,  2 Jul 2019 20:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=sHd9tZ/C/GkG6CrKWUvuNHqwunt1CaGgHVf7UCtVKME=; b=D7q
	HCdfYLcn3wO21pw1c+546osUoLtM/mvpYNzS6kYwQg1yPvtFcqqMgySJA+n5E2FJrw+JP+oFdz7Rq
	YvhM/FhcO+It/IYktCYSF2kH4/TPcOenX+gFqIhxuWbZs52dxZFphmnqJRIWlb+wi+pphPx4+8Edy
	jEB++MViPKrNB6qroS9dJyOWI/4DxHw9JaskuyBbtRNe9vsLd0Eu7lac7JFQPwjMdd4vTkJR36mGg
	pAViz5FwaYF1NzKC61222yDQpmM3O15QsYCJ9SCa23FMLKPrzbd1Gry6ZtZ3+FtDs3s1nhCCJOpRf
	zg7jDmn/JEylRg4MiIZVT8iiFjK9AmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiNhW-0003nK-Ew; Tue, 02 Jul 2019 18:40:22 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiNhH-0002xJ-1C
 for linux-riscv@lists.infradead.org; Tue, 02 Jul 2019 18:40:08 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so3439695pgl.11
 for <linux-riscv@lists.infradead.org>; Tue, 02 Jul 2019 11:40:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=hG1JsQUy046szRFDOIEOc0GrqgtZ4N9C6eAqGmFMcZg=;
 b=M/zho78zeJOQugBcdoK7P7W4WUEDOlNbsVIincCdzc7egd5SueogZzrbLrF9qFqxIf
 zUuXIONh6LZN8s6e87uNdUj2AJp2KzRUirGiAl1Y7YW3J5ZPIa/KgyvZtGTuB0Hr6LbA
 +vmf1fMprr5qs2SgZf1NbEMO+7lbfI9GIMLESzki905WvFh1ELaBYDQZxGM5a1rdM/T9
 ztveeivAxZt0qeBazc9JAWkCR8zh77uqMArfEwhtdwvqe+EFAxEVuQeWNUqLTDAXIPtT
 sOA5EdfthaVkfPc5v5AeIvevLh5/s5A4R1IxC0wnZTfkeiPGL+o+Rmk/CG6JcqZCBPwE
 ZPqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=hG1JsQUy046szRFDOIEOc0GrqgtZ4N9C6eAqGmFMcZg=;
 b=EVFkpXmhsnB46HR6U66FCpUnxiJ96qX7G4BqF/B8PqyaFLlvCWFYZGBlKSMRnS9Zb4
 uLr0RO/KnksoW4U1HllS9qVEiZSIuyYVEMNAjkJTA76TKYFzjGBkbIj+onCcvwaIAmIt
 kDqICyMIOYwbEPdqeYw0KBl4SKksrQiGrK8xi5qYoHwZR/QExdXIS/EJAbzBwiVRNdIk
 GApwFc06+87r2wKQEvfEC24TfJGVj+IWCo9l0G+EM5Ys+TKCyiSVabKOMRuAexr9sOLW
 /5fPtUWXFSNEqCnmt3NUq4v4oqkAHZPJ8fPITdf00b9V5x0Iu/74s7OUQ05ZQjjq92rK
 2dJQ==
X-Gm-Message-State: APjAAAUNfwpxCfb1dIZENqLR0yKSivM/4fqSVtj449frgLMYjAH6GjrO
 Yb7DDeGwzSlXkfBna7EwnaANog==
X-Google-Smtp-Source: APXvYqzsMlaSyc7pZIJYDjprnLyGQKCrS/C/7bgqbvBj63BhfUiyhW4J4JPtfydDsSsZis7KAagqgA==
X-Received: by 2002:a63:1e0b:: with SMTP id e11mr9709204pge.402.1562092804922; 
 Tue, 02 Jul 2019 11:40:04 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 e10sm15065327pfi.173.2019.07.02.11.40.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 02 Jul 2019 11:40:04 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, miquel.raynal@bootlin.com, richard@nod.at,
 vigneshr@ti.com
Subject: [PATCH v7 0/4] mtd: spi-nor: add support for is25wp256 spi-nor flash
Date: Wed,  3 Jul 2019 00:09:01 +0530
Message-Id: <1562092745-11541-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_114007_085228_ECCE3399 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The patch series adds support for 32MiB spi-nor is25wp256 present on HiFive
Unleashed A00 board. The flash device gets BFPT_DWORD1_ADDRESS_BYTES_3_ONLY
from BFPT table for address width, whereas the flash can support 4 byte
address width, so the address width is configured by using the post bfpt
fixup hook as done for is25lp256 device in
commit cf580a924005 ("mtd: spi-nor: fix nor->addr_width when its value
configured from SFDP does not match the actual width") queued in
spi-nor/next branch [1].

Patches 1 and 3 are based on original work done by Wesley Terpstra and/or
Palmer Dabbelt:
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Erase/Read/Write operations are verified on HiFive Unleashed board using  mtd and
flash utils (v1.5.2):
1. mtd_debug  	: Options available are : erase/read/write.
2. flashcp	: Single utility that erases flash, writes a file to flash and verifies the data back.
3. flash_unlock : Unlock flash memory blocks. Arguments: are offset and number of blocks.
3. flash_lock   : Lock flash memory blocks. Arguments: are offset and number of blocks. 

The Unlock scheme clears the protection bits of all blocks in the Status register.

Lock scheme:
A basic implementation based on the stm_lock scheme and is validated for a different
number of blocks passed to flash_lock. ISSI devices have top/bottom area selection
in function register which is OTP memory. so we are not updating the OTP section
of function register.

The changes along are available under branch v5.2-rc1-mtd-spi-nor/next at:
https://github.com/sagsifive/riscv-linux-hifive 
 
[1] https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git/log/?h=spi-nor/next

Revision history:
V6<->V7:
-Incorporated review comments from Vignesh.
-Used post bfpt fixup hook as suggested by Vignesh.
-Introduce SPI_NOR_HAS_BP3 to identify whether the flash has 4th bit protect bit.
-Prefix generic flash access functions with spi_nor_xxxx.

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

Sagar Shrikant Kadam (4):
  mtd: spi-nor: add support for is25wp256
  mtd: spi-nor: fix nor->addr_width for is25wp256
  mtd: spi-nor: add support to unlock the flash device
  mtd: spi-nor: add locking support for is25wp256 device

 drivers/mtd/spi-nor/spi-nor.c | 343 +++++++++++++++++++++++++++++++++++-------
 include/linux/mtd/spi-nor.h   |   8 +
 2 files changed, 300 insertions(+), 51 deletions(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
