Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42047B64E
	for <lists+linux-riscv@lfdr.de>; Sun, 28 Apr 2019 20:09:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ii/07Z1Epm+U8mD6T+cpFdnn5fEY7EJlGyTG3mBftcA=; b=QER
	TJ3jJJhrphRcHSaDsNFcsWbzXzLh0e1t30ioVORK96wVrYxjN99IbUQQ0O6slOcT8aq3sBlOeMb1G
	z0sGbFWSRZSRCE7Cq9HxBXbug0VCgpzRVFQmJgMwhCbj0DYwUHUxH4pn8ETKgoUIrspoLGGFZ6LfB
	nytWvkWJYjFjoYS9Pgue39TrpQy/6iaEGTV7DbX3z5XsT3aUZzjENBitw1QuHlkASDMJDetvee88p
	1E+nLqYN+XzXd5PY3KoOH7jInNshHuqr2QVneLxv4C2csVAlKfoRnF/4WmoR0fSTjcHFcsbeM6yKr
	tC4qigcQKEbH5o7E3G0LdfAZ1NMbwkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKoFC-0004j6-LT; Sun, 28 Apr 2019 18:09:42 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKoF0-0004b4-DO
 for linux-riscv@lists.infradead.org; Sun, 28 Apr 2019 18:09:32 +0000
Received: by mail-pf1-x442.google.com with SMTP id b3so4218698pfd.1
 for <linux-riscv@lists.infradead.org>; Sun, 28 Apr 2019 11:09:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=dHsNtb0xgYr6CS23JfuP3XA67ia9/nQ2eypCoJ7bg1Q=;
 b=TGay/en3NKW/4hdmiDm4PYTJAZbkQJ4iOhsOztVRV4arO0RQS/ag5eNIuVZNlv2BjM
 LqXYuCrjm2hp51+qkTtOCNaYUoGxyv7BlUM6asQ8qOZ+jHpjNQ+iFuXm7JKPubV+OnS5
 KBGFBpMYh3IbYn6vZ6x3PkCUdeGFXsjekdoBE7Nq31iEFyNPcYGJIq9YEn70E9AO56HA
 UvfAgwya+bBBqVpLHt73jYtHpt0KAeObP5hObu5PngG+u3BGL1k2QINBhyw1WN3Gc12d
 nqJ6CCjb8bSvQ4eDySvM+ROOvyy1IlKjkkPKSezePhgtPNnQNDDKjCZzeic4C8zqerB3
 caYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=dHsNtb0xgYr6CS23JfuP3XA67ia9/nQ2eypCoJ7bg1Q=;
 b=nBoMNR1HY4f9CifrT/MMlW4KCS2rL7eCQ64TYE2k/wR8SKD9ld1qYsFUUbt/BB0Zid
 OVhj8fVEMzWrvbl/oAosu6adAZlB4/skYiieODKaOS80EHD0s4juwehrds0P5IWwhtmr
 TG8D3KC8cbgZ/eVV1AlFp2h7DlhnSTJG7BYUOywtETehKygiUjQi+Sb/+0XSPTLvj/C3
 4hB+FB0O6g/yJoTv0LVCJhtrFplKP4oTcayAe779oeahW0YFDtHbzQTzGib3gG3HdTkt
 1iysi3LuHEqTFukNISQy5SFEiKiZQ8+PKavCGG+MsP1712sF8btgkRLrfNshIrVzCqs6
 mFJg==
X-Gm-Message-State: APjAAAVWNraCvphdEvlDzcJ8/rlJLzvn6QmtNeuZNMNpiO+VJeH/kdvU
 iENpxYDqa08H7VNMtk5WwNiPdQ==
X-Google-Smtp-Source: APXvYqwyli87GbccvSIz+mSfhVCyvulkUz3OjuKOQcL1lU+PFd3c/qyeIGLDq7Rqy29KcxfEgMdeJA==
X-Received: by 2002:a65:41ca:: with SMTP id b10mr55977365pgq.256.1556474969402; 
 Sun, 28 Apr 2019 11:09:29 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id l2sm36177136pgl.2.2019.04.28.11.09.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 28 Apr 2019 11:09:28 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: marek.vasut@gmail.com, tudor.ambarus@microchip.com, dwmw2@infradead.org,
 computersforpeace@gmail.com, bbrezillon@kernel.org, richard@nod.at
Subject: [PATCH v2 0/3] add support for is25wp256 spi-nor device.
Date: Sun, 28 Apr 2019 23:39:13 +0530
Message-Id: <1556474956-27786-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_110930_521173_D0B1A4FF 
X-CRM114-Status: GOOD (  10.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: palmer@sifive.com, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, Sagar Shrikant Kadam <sagar.kadam@sifive.com>,
 paul.walmsley@sifive.com, linux-riscv@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch set is tested on HiFive Unleashed board and is based on mainline
kernel v 5.1-rc5. Its intended to add support for 32 MB spi-nor flash
mounted on the board. Memory Device supports 4/32/and 64 KB sectors size.
The device id table is updated accordingly.

Flash parameter table for ISSI device is set to use macronix_quad_enable
procedure to set the QE (quad-enable) bit of Status register.

With issi_lock and unlock schemes support for block protection is added 
in patch 2 and 3.
These patches are extended from base work done in a patch at following commit:
https://github.com/riscv/riscv-linux/commit/c94e267766d62bc9a669611c3d0c8ed5ea26569b

Erase/Read/Write operations are verified on HiFive Unleashed board using  mtd and flash utils (v1.5.2):
1. mtd_debug  	:Options available are : erase/read/write.
2. flashcp	:Single utility that erases flash, writes a file to flash and verifies the data back.
3. flash_lock	:Lock flash memory blocks.
4. flash_unlock: Unlock flash memory blocks.

Unlock scheme clears the bit protection bits of all blocks in the Status register.
Lock schemes in patch  3 is based on stm_lock mechanism. With current implementation entire flash memory
gets protected.

Block protection schemes are tested with flash_lock and unlock utils.

Revision history:
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

 drivers/mtd/spi-nor/spi-nor.c | 116 +++++++++++++++++++++++++++++++++++++++++-
 include/linux/mtd/spi-nor.h   |   2 +
 2 files changed, 117 insertions(+), 1 deletion(-)

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
