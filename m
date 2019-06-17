Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FA048F10
	for <lists+linux-riscv@lfdr.de>; Mon, 17 Jun 2019 21:30:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j6f7IM9YzQBSt/Klie/UWPhPZawKE7Db4JVrrJPkjW0=; b=QigWkTvKszuri3Kumrcjtp7Nq+
	V41HUvzcP8KLX6JvKv2nJ0JqdDsyGWgT0mG4IpW9BrWp8+se/oT6Ewz7u8kytcjntfCITOBZpRjq3
	YwruwykTKXGvyjBfq9swEI4z4BeS+G55malANTv4q7HoUcGOXtVfG5HG+rN6qD1CkSqPXe0aM1UKr
	ntLr1XYITpHJZwax6H4gxtAc+l8mPCMSYRjIV/pk2cmG6PO2Lemp/8JWUt1XQpgOpPCp9F/b5ZqNE
	/vifYAP5c3EAqp9YKSzTsIhOQmRIqmB1S2hkWuJnW/OZr1rPhS9+xd+PIE++8lMJjuSccr3vIKy9z
	ZlpxaO/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcxKX-0005i6-G9; Mon, 17 Jun 2019 19:30:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcxKM-0004TF-Ox
 for linux-riscv@lists.infradead.org; Mon, 17 Jun 2019 19:30:04 +0000
Received: by mail-wr1-x443.google.com with SMTP id p11so11276910wre.7
 for <linux-riscv@lists.infradead.org>; Mon, 17 Jun 2019 12:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=EkTsmPm54nV9I4eCV7klbBI2xmAyNZbDf6YnrgHdVW0=;
 b=AmGxu5F0KkO3GEQ+Ip9mfFWBY+gHo846Sjgr7/Mu/jH0pE9VoO7pZ8yAl7ZzP1xgNv
 oM1KZ0aJNGsTRu6qeMpzYy5xBvKeV/zhKXEfoRZCSPXxxuw+lE1meqg9Ldgwb/8SLQKP
 PX9onnzJjT7tzw5wGIhQwOQ2F7fcB9J6k387s9l30NMFJ0RJiY8x4Jo7ZP5QFD7jVjVG
 DBP4xEwe3rQX/S4eCkfcidL0fqh2msiwMk3NV1xO5kc53n6n/FJUQ4Ku6+rs/vKVVvw8
 gJBxdh+YyBGwEIv8EOEGhEAY3sqkh5Qt2YBAEF98qNIc8yykvpK3RydN2xGe37fzTojI
 tLyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=EkTsmPm54nV9I4eCV7klbBI2xmAyNZbDf6YnrgHdVW0=;
 b=uI+m85jBjtedY5tCckg78xPbmLvWi8kwlUlxMswzBFRrdVFGzNn5N7D+JSd1/8v8An
 bFY52UOn3i5mVNAA0uiGntYHGWjM58RoBlzWVwtZy7R+LFxqMWo0tDsnR1nLtC9s7NED
 Mg6ZFShz3MSPGjhJ+f5/+MFtmOJoXeo944a5uZ3PVeOz7aqSQSHF4VjbW0h5F+BUl5JC
 /J4K6Q/3sji7fKXbWUjcgIiHbLLWNzWgdQifGtS027/qlFCSCegJy6eYHx2lxyrRzl+r
 R8s1zFT8xdT2ePcabd2UOpsYs6hBKlIWUiSUyoJG4fcgmihdxmFLXkGlmz+A8NWBDozW
 hHCA==
X-Gm-Message-State: APjAAAVZAmbYp9CfcUeqAhgY3p6AQmPQo7HANrAj5FSbasv4zVUtma2H
 lPdQLUDtvZ2jGZq6+3aXAXk8Rov0th75xg==
X-Google-Smtp-Source: APXvYqyX0kVbSqS7aC4sfwCCNuTTDSn5b7E8alU67haUiF3ORjBg9no+KsXo3NxLtJPX9fne/yCrhw==
X-Received: by 2002:adf:fecd:: with SMTP id q13mr7631641wrs.97.1560799797685; 
 Mon, 17 Jun 2019 12:29:57 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com
 (cust-west-pareq2-46-193-13-130.wb.wifirst.net. [46.193.13.130])
 by smtp.googlemail.com with ESMTPSA id u18sm9412034wrr.11.2019.06.17.12.29.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 17 Jun 2019 12:29:57 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>
Subject: [PATCH 3/3] riscv: defconfig: enable SOC_SIFIVE
Date: Mon, 17 Jun 2019 21:29:50 +0200
Message-Id: <1560799790-20287-4-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
References: <1560799790-20287-1-git-send-email-lollivier@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_123003_014962_C74E5077 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Loys Ollivier <lollivier@baylibre.com>, linux-kernel@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Enable SOC_SIFIVE so the default upstream config is bootable on the SiFive
Unleashed Board.
And have basic support for future boards based on the same SoC.

Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
---
 arch/riscv/configs/defconfig | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 4f02967e55de..6e3e37aa8fd1 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -12,6 +12,7 @@ CONFIG_CHECKPOINT_RESTORE=y
 CONFIG_BLK_DEV_INITRD=y
 CONFIG_EXPERT=y
 CONFIG_BPF_SYSCALL=y
+CONFIG_SOC_SIFIVE=y
 CONFIG_SMP=y
 CONFIG_MODULES=y
 CONFIG_MODULE_UNLOAD=y
@@ -49,8 +50,6 @@ CONFIG_SERIAL_8250=y
 CONFIG_SERIAL_8250_CONSOLE=y
 CONFIG_SERIAL_OF_PLATFORM=y
 CONFIG_SERIAL_EARLYCON_RISCV_SBI=y
-CONFIG_SERIAL_SIFIVE=y
-CONFIG_SERIAL_SIFIVE_CONSOLE=y
 CONFIG_HVC_RISCV_SBI=y
 # CONFIG_PTP_1588_CLOCK is not set
 CONFIG_DRM=y
@@ -66,9 +65,6 @@ CONFIG_USB_OHCI_HCD_PLATFORM=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_UAS=y
 CONFIG_VIRTIO_MMIO=y
-CONFIG_CLK_SIFIVE=y
-CONFIG_CLK_SIFIVE_FU540_PRCI=y
-CONFIG_SIFIVE_PLIC=y
 CONFIG_EXT4_FS=y
 CONFIG_EXT4_FS_POSIX_ACL=y
 CONFIG_AUTOFS4_FS=y
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
