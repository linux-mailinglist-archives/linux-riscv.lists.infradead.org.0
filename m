Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AF43A779B
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Sep 2019 01:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:MIME-Version:Message-Id:Date:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U8Sirm7d04RhUs/98fHpPPeJVpD9wZvPqlvo74mDe3o=; b=JtHQxTFmUM4CVM
	3DRRSchx+4z+O7couURxgEIq/K8QfNQftfTwrHPVAvbYpa2ooYnjlXTjDgUjVgS8bru3ExtBujxCa
	gYbzg0QWMn2JI5D3tz6AVjjaaMdiJMMBdI8ECnrzKCMDfO85Z0xlTVPSHJ3JNy9vUIbwhFpDj3vC/
	Yc98P01utH4wBQ0qMkvuSewEI4u61RZ3FUDHK6W544djKj2CrYoaNliUqxT5iDik8QDYPO/ExnQKQ
	WAPMe9xfRpXUkOVXxs6ngZsZ+gDcUq93U054Tyb5V1BfAP4bS+/uI1BLjFO5isjQSrY7Ao2LaxB+L
	tilDsHFmfwCDzSnRPKug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5ILY-0002j9-0c; Tue, 03 Sep 2019 23:36:24 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5ILT-0002iV-Ey
 for linux-riscv@lists.infradead.org; Tue, 03 Sep 2019 23:36:20 +0000
Received: by mail-pf1-f196.google.com with SMTP id y9so11922704pfl.4
 for <linux-riscv@lists.infradead.org>; Tue, 03 Sep 2019 16:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:date:message-id:mime-version
 :content-transfer-encoding:cc:from:to;
 bh=VTVfOizTRSDhAR0ftvZ5XR/ALeURLSbukVJWeeIGIQ4=;
 b=dMKoIkZBTSPGGF/JBWprzQEFKxywdOQUDTw0pmW1H70pooXkBl8lOP12AS4Id6sjxs
 vMa7uRaVXCDgER8HVjVoC2NY4ftkM1jdYKnW0Bse5+978HUm8Fs2uhir78sdBtbOGe+R
 uKtkGkcvz6TkodtTu4SM1M+JXHCOismLWszXLZMKcQBBqUrxUzCrkrCZzwlRBJ7cJ4TV
 32EZAYGTbWEEzsYwPTzmKgS0ho/UI+VJ+HCigtIpk4B80O5uiaEQE9ASy/KkzR/wmyWK
 MOCXEkfZUGrWvFyFnNj6mnB+WnRsl3ROWaSGv/FYFHt2CBMZdKFW0zGrfl7LoORqEndD
 VNIg==
X-Gm-Message-State: APjAAAUHjJBqScXkIlKhnJnNb1cC0WSU8cuN5dHNGjDk+VK+uv8zyVMR
 cVivaqe/p/+QqVh4/E5yZTSw9ylQw+s=
X-Google-Smtp-Source: APXvYqwE0UYLOqp0Oj4x7qF5BBzrBWk5mcZ8VWUKyGEJozqrgtDMW1pLlD49KNG2NXHPa0sUUoHJrA==
X-Received: by 2002:a62:8204:: with SMTP id w4mr28496930pfd.30.1567553778357; 
 Tue, 03 Sep 2019 16:36:18 -0700 (PDT)
Received: from localhost ([12.206.222.5])
 by smtp.gmail.com with ESMTPSA id v184sm19722336pgd.34.2019.09.03.16.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Sep 2019 16:36:17 -0700 (PDT)
Subject: [PATCH] RISC-V: Add Plan 9 support to the defconfigs
Date: Tue,  3 Sep 2019 16:35:10 -0700
Message-Id: <20190903233510.9846-1-palmer@sifive.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
From: Palmer Dabbelt <palmer@sifive.com>
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_163619_501240_9B5A830D 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

QEMU contains facilities for sharing directory trees between a guest and
host that are based on plan 9's network filesystem.  This patch adds the
relevant entries to our defconfigs to enable these, the most interesting
of which is probably CONFIG_VIRTIO_PCI.

Signed-off-by: Palmer Dabbelt <palmer@sifive.com>
---
 arch/riscv/configs/defconfig      | 4 ++++
 arch/riscv/configs/rv32_defconfig | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 3efff552a261..79ae1f932b2e 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -73,6 +75,7 @@ CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_MMC=y
 CONFIG_MMC_SPI=y
+CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
@@ -86,6 +89,7 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
diff --git a/arch/riscv/configs/rv32_defconfig b/arch/riscv/configs/rv32_defconfig
index 7da93e494445..5bf9e919900a 100644
--- a/arch/riscv/configs/rv32_defconfig
+++ b/arch/riscv/configs/rv32_defconfig
@@ -29,6 +29,8 @@ CONFIG_IP_PNP_DHCP=y
 CONFIG_IP_PNP_BOOTP=y
 CONFIG_IP_PNP_RARP=y
 CONFIG_NETLINK_DIAG=y
+CONFIG_NET_9P=y
+CONFIG_NET_9P_VIRTIO=y
 CONFIG_PCI=y
 CONFIG_PCIEPORTBUS=y
 CONFIG_PCI_HOST_GENERIC=y
@@ -69,6 +71,7 @@ CONFIG_USB_OHCI_HCD=y
 CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
+CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_MMIO=y
 CONFIG_SIFIVE_PLIC=y
 CONFIG_EXT4_FS=y
@@ -83,6 +86,7 @@ CONFIG_NFS_V4=y
 CONFIG_NFS_V4_1=y
 CONFIG_NFS_V4_2=y
 CONFIG_ROOT_NFS=y
+CONFIG_9P_FS=y
 CONFIG_CRYPTO_USER_API_HASH=y
 CONFIG_CRYPTO_DEV_VIRTIO=y
 CONFIG_PRINTK_TIME=y
-- 
2.21.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
