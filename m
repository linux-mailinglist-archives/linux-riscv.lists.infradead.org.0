Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6581B75ACA
	for <lists+linux-riscv@lfdr.de>; Fri, 26 Jul 2019 00:36:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UIm/grGMoF9yEnOB1Ieq1TRJbcAbnatb/zPZDycW+uI=; b=em71d1Jzicq7HO
	DBFFvy+Yes/56vg8Immu0+4bq2sVJlk3kBZLCm0ZNVl2tj1PSpQeWiTfs8H6rB1vRTxVSW1sPfS6Y
	A/dmdp26rZQgng9TcmyPLKlk2sUJyzY25rLl3hpGcHho9YNWfLmKPYBnsRnDstRZHHCdDpKAMilUN
	wpVCeGAna7inXxPh5Ib1priDj1GmfmYu9IcYOILFxWcjh077Gmf1LND7Kqa48yKuBqd+m2GLFdOX/
	9esJy7l5KHNTk81lFTP43p55gL9i8iiF6No7LFPwzwJtWb8sOwlMdtiLsWq89B7TC2AxX9926Fr2T
	/3ybBetHho3FkvdptCEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmLm-0000jK-Ov; Thu, 25 Jul 2019 22:36:39 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqmLi-0000il-Mj
 for linux-riscv@lists.infradead.org; Thu, 25 Jul 2019 22:36:36 +0000
Received: by mail-io1-xd44.google.com with SMTP id k8so100762703iot.1
 for <linux-riscv@lists.infradead.org>; Thu, 25 Jul 2019 15:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=nlrgc3XP///cXkj+Yu47zEDSpxWwFMEQoIXOJqQtEs8=;
 b=edh9Q/nTB28aapBqaGJrUwVC4YldhLZQXUdWG9P/jholJQh/T7dI2MsA9ti5OewBbT
 pSwVbNxTaKDukE/FZzdQq2iXTb9jRPKE3ZY0b8wxbIBQ//o5KFIYKBevGAc1x9wewtVB
 tXcw5RyIZrJMUZAGiNNtVQUNXx1qEzHdpQ1Atp+PdW1W6bxPFS08ksjS6kxLbIPzMhjw
 6wr7giY2zxeaOye0oLuRwr8gvrNn2vfJIMw6xaVocjRlUCC0TBf610nIAoTz4OgRGlFe
 5eP84GWop+APeaGrjKkSnv4YNvcZXPluVxak1Z2nCmrzT4MvkjoBpjlF0iW00rgLLwXA
 5lqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=nlrgc3XP///cXkj+Yu47zEDSpxWwFMEQoIXOJqQtEs8=;
 b=FRvgaevWaK1mSK2cFawD6KQvdaOcpfSZ7RJcM649s172bqWVP0nKLhZBgCaSt9gZ2Q
 bBos8/coOe7H8BT/X9yBR023/WlUFE7FcBGuRstIlbUDRDyq1jsOgu5oikyVzFHHLh1F
 ZHr5J0t3+ORxw32aVIDmS9dPQhnOqFor2FUpuVidXPn66f16papSRN3/p8dJbgoTVdbm
 rDAiBjX0geGJvqAGNJx7MGixcuImRnZBlzklnWXbcMERwzv7LEN5+ynCRCJ9Nq2tMTWc
 YhS+M8F7xfzsLhhQIjxTK3maoVAv7KshuZ4ZocgVS+KADT7UFEOYdYENnRRd1Y3MZ8B7
 oWCw==
X-Gm-Message-State: APjAAAVU0NzZh/UU0P/pX5znz0k7XvYjUlNLWKY5vYZl8s8yHfpbGnSe
 LgcdQvN5G9exccMzaoKqv5JtVQ8oXc8=
X-Google-Smtp-Source: APXvYqwGdKrLMK8/VhIuZJOtHErkOj9DQrk7CUrGldHTNrmyITpvd7CaE15zTO/7L/PhzJX7ULSyLw==
X-Received: by 2002:a5d:9bc6:: with SMTP id d6mr14846311ion.160.1564094193396; 
 Thu, 25 Jul 2019 15:36:33 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id n26sm37422886ioc.74.2019.07.25.15.36.31
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 25 Jul 2019 15:36:32 -0700 (PDT)
Date: Thu, 25 Jul 2019 15:36:31 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: defconfig: align RV64 defconfig to the output of
 "make savedefconfig"
Message-ID: <alpine.DEB.2.21.9999.1907251535421.32766@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_153634_770637_715D1BE4 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Align the RV64 defconfig to the output of "make savedefconfig" to
avoid unnecessary deltas for future defconfig patches.  This patch
should have no runtime functional impact.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 arch/riscv/configs/defconfig | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index b7b749b18853..93205c0bf71d 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -34,6 +34,7 @@ CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
 CONFIG_PCIE_XILINX=y
 CONFIG_DEVTMPFS=y
+CONFIG_DEVTMPFS_MOUNT=y
 CONFIG_BLK_DEV_LOOP=y
 CONFIG_VIRTIO_BLK=y
 CONFIG_BLK_DEV_SD=y
@@ -53,6 +54,8 @@ CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
 CONFIG_HVC_RISCV_SBI=y
+CONFIG_SPI=y
+CONFIG_SPI_SIFIVE=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
 CONFIG_DRM_RADEON=y
@@ -66,8 +69,9 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
+CONFIG_MMC=y
+CONFIG_MMC_SPI=y
 CONFIG_VIRTIO_MMIO=y
-CONFIG_SPI_SIFIVE=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
@@ -83,8 +87,4 @@ CONFIG_ROOT_NFS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
-CONFIG_SPI=y
-CONFIG_MMC_SPI=y
-CONFIG_MMC=y
-CONFIG_DEVTMPFS_MOUNT=y
 # CONFIG_RCU_TRACE is not set
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
