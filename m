Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A058610F941
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 08:48:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x00OjYK/z/iLlGY2ASADbsBsxWmk0jVRTFz5Vyk/tss=; b=W4MoLWgpjHNH8WOQgK891D3kU
	ltjnjWai/k4smp5oqagcFTLKVI740hRZaPtsUCv4mwFfAxHcvMTT8DgAlzoinZScjEMlipiXn7Xi/
	V4KvpJv3X7w1T5FoJP2wvUAfkPcPfWB+gT3I+OfkptaZA8yZtt6eXZ8agv6w5KXDoER13c4X8cr+Q
	rJSE1L/UtUqqD1OV2P8ur0jFnwvoiA0TJXGftakMtmzV/ZGSKtaRq4Ck32THh+Hkr1eLIzzPECVTP
	HWn5WzaVbHg9jY1GblmahvK7W7+7jflGFLWjprXplJBog3ZdWU+YNahhMfWy74m8wS4+D6ZkN1FrW
	loLQI2FTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2ud-0001JE-L0; Tue, 03 Dec 2019 07:47:59 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2sF-0007aX-Lv; Tue, 03 Dec 2019 07:45:33 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37jMhk016017,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37jMhk016017
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:45:22 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:45:21 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 2/6] dt-bindings: reset: add bindings for rtd1619 reset
 controls
Date: Tue, 3 Dec 2019 15:45:09 +0800
Message-ID: <20191203074513.9416-3-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191203074513.9416-1-james.tai@realtek.com>
References: <20191203074513.9416-1-james.tai@realtek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234532_042703_7C4ADC5E 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 cylee12 <cylee12@realtek.com>, linux-realtek-soc@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

From: cylee12 <cylee12@realtek.com>

Add devicetree binding for Realtek RTD1619 SoC reset controls.

Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
Signed-off-by: James Tai <james.tai@realtek.com>
---
 include/dt-bindings/reset/rtk,reset-rtd1619.h | 124 ++++++++++++++++++
 1 file changed, 124 insertions(+)
 create mode 100644 include/dt-bindings/reset/rtk,reset-rtd1619.h

diff --git a/include/dt-bindings/reset/rtk,reset-rtd1619.h b/include/dt-bindings/reset/rtk,reset-rtd1619.h
new file mode 100644
index 000000000000..f6fa6359ec1c
--- /dev/null
+++ b/include/dt-bindings/reset/rtk,reset-rtd1619.h
@@ -0,0 +1,124 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#ifndef __DT_BINDINGS_RTK_RESET_RTD1619_H
+#define __DT_BINDINGS_RTK_RESET_RTD1619_H
+
+#define CC_RSTN_REG_BANK_1       (0x0000)
+#define CC_RSTN_REG_BANK_2       (0x0100)
+#define CC_RSTN_REG_BANK_3       (0x0200)
+#define CC_RSTN_REG_BANK_4       (0x0300)
+#define CC_RSTN_REG_BANK_6       (0x0400)
+#define CC_RSTN_REG_BANK_7       (0x0500)
+
+#define CC_RSTN_MISC             (CC_RSTN_REG_BANK_1 | 0x00)
+#define CC_RSTN_DIP              (CC_RSTN_REG_BANK_1 | 0x02)
+#define CC_RSTN_GSPI             (CC_RSTN_REG_BANK_1 | 0x04)
+#define CC_RSTN_SDS              (CC_RSTN_REG_BANK_1 | 0x06)
+#define CC_RSTN_SDS_REG          (CC_RSTN_REG_BANK_1 | 0x08)
+#define CC_RSTN_SDS_PHY          (CC_RSTN_REG_BANK_1 | 0x0a)
+#define CC_RSTN_VE1              (CC_RSTN_REG_BANK_1 | 0x0c)
+#define CC_RSTN_VE2              (CC_RSTN_REG_BANK_1 | 0x0e)
+#define CC_RSTN_R2RDSC_A00       (CC_RSTN_REG_BANK_1 | 0x10)
+#define CC_RSTN_RSA              (CC_RSTN_REG_BANK_1 | 0x12)
+#define CC_RSTN_GPU              (CC_RSTN_REG_BANK_1 | 0x14)
+#define CC_RSTN_DC_PHY           (CC_RSTN_REG_BANK_1 | 0x16)
+#define CC_RSTN_DCPHY_CRT        (CC_RSTN_REG_BANK_1 | 0x18)
+#define CC_RSTN_LSADC            (CC_RSTN_REG_BANK_1 | 0x1a)
+#define CC_RSTN_SE               (CC_RSTN_REG_BANK_1 | 0x1c)
+#define CC_RSTN_HSE_A00          (CC_RSTN_REG_BANK_1 | 0x1e)
+
+#define CC_RSTN_JPEG             (CC_RSTN_REG_BANK_2 | 0x00)
+#define CC_RSTN_SD               (CC_RSTN_REG_BANK_2 | 0x02)
+#define CC_RSTN_EMMC_A00         (CC_RSTN_REG_BANK_2 | 0x04)
+#define CC_RSTN_SDIO             (CC_RSTN_REG_BANK_2 | 0x06)
+#define CC_RSTN_PCR_CNT          (CC_RSTN_REG_BANK_2 | 0x08)
+#define CC_RSTN_PCIE0_STITCH     (CC_RSTN_REG_BANK_2 | 0x0a)
+#define CC_RSTN_PCIE0_PHY        (CC_RSTN_REG_BANK_2 | 0x0c)
+#define CC_RSTN_PCIE0            (CC_RSTN_REG_BANK_2 | 0x0e)
+#define CC_RSTN_PCIE0_CORE       (CC_RSTN_REG_BANK_2 | 0x10)
+#define CC_RSTN_PCIE0_POWER      (CC_RSTN_REG_BANK_2 | 0x12)
+#define CC_RSTN_PCIE0_NONSTITCH  (CC_RSTN_REG_BANK_2 | 0x14)
+#define CC_RSTN_PCIE0_PHY_MDIO   (CC_RSTN_REG_BANK_2 | 0x16)
+#define CC_RSTN_PCIE0_SGMII_MDIO (CC_RSTN_REG_BANK_2 | 0x18)
+#define CC_RSTN_UR2              (CC_RSTN_REG_BANK_2 | 0x1a)
+#define CC_RSTN_UR1              (CC_RSTN_REG_BANK_2 | 0x1c)
+#define CC_RSTN_MISC_SC0         (CC_RSTN_REG_BANK_2 | 0x1e)
+
+#define CC_RSTN_AE               (CC_RSTN_REG_BANK_3 | 0x00)
+#define CC_RSTN_CABLERX          (CC_RSTN_REG_BANK_3 | 0x02)
+#define CC_RSTN_MD_A00           (CC_RSTN_REG_BANK_3 | 0x04)
+#define CC_RSTN_TP_A00           (CC_RSTN_REG_BANK_3 | 0x06)
+#define CC_RSTN_NF_A00           (CC_RSTN_REG_BANK_3 | 0x08)
+#define CC_RSTN_MISC_SC1         (CC_RSTN_REG_BANK_3 | 0x0a)
+#define CC_RSTN_I2C_3            (CC_RSTN_REG_BANK_3 | 0x0c)
+#define CC_RSTN_FAN              (CC_RSTN_REG_BANK_3 | 0x0e)
+#define CC_RSTN_TVE              (CC_RSTN_REG_BANK_3 | 0x10)
+#define CC_RSTN_AIO              (CC_RSTN_REG_BANK_3 | 0x12)
+#define CC_RSTN_VO               (CC_RSTN_REG_BANK_3 | 0x14)
+#define CC_RSTN_MIPI_A00         (CC_RSTN_REG_BANK_3 | 0x16)
+#define CC_RSTN_HDMIRX           (CC_RSTN_REG_BANK_3 | 0x18)
+#define CC_RSTN_HDMIRX_WRAP      (CC_RSTN_REG_BANK_3 | 0x1a)
+#define CC_RSTN_HDMI             (CC_RSTN_REG_BANK_3 | 0x1c)
+#define CC_RSTN_DISP             (CC_RSTN_REG_BANK_3 | 0x1e)
+
+#define CC_RSTN_SATA_PHY_POW1    (CC_RSTN_REG_BANK_4 | 0x00)
+#define CC_RSTN_SATA_PHY_POW0    (CC_RSTN_REG_BANK_4 | 0x02)
+#define CC_RSTN_SATA_MDIO1       (CC_RSTN_REG_BANK_4 | 0x04)
+#define CC_RSTN_SATA_MDIO0       (CC_RSTN_REG_BANK_4 | 0x06)
+#define CC_RSTN_SATA_WRAP        (CC_RSTN_REG_BANK_4 | 0x08)
+#define CC_RSTN_SATA_MAC_P1      (CC_RSTN_REG_BANK_4 | 0x0a)
+#define CC_RSTN_SATA_MAC_P0      (CC_RSTN_REG_BANK_4 | 0x0c)
+#define CC_RSTN_SATA_MAC_COM     (CC_RSTN_REG_BANK_4 | 0x0e)
+#define CC_RSTN_PCIE1_STITCH     (CC_RSTN_REG_BANK_4 | 0x10)
+#define CC_RSTN_PCIE1_PHY        (CC_RSTN_REG_BANK_4 | 0x12)
+#define CC_RSTN_PCIE1            (CC_RSTN_REG_BANK_4 | 0x14)
+#define CC_RSTN_PCIE1_CORE       (CC_RSTN_REG_BANK_4 | 0x16)
+#define CC_RSTN_PCIE1_POWER      (CC_RSTN_REG_BANK_4 | 0x18)
+#define CC_RSTN_PCIE1_NONSTITCH  (CC_RSTN_REG_BANK_4 | 0x1a)
+#define CC_RSTN_PCIE1_PHY_MDIO   (CC_RSTN_REG_BANK_4 | 0x1c)
+#define CC_RSTN_HDMITOP          (CC_RSTN_REG_BANK_4 | 0x1e)
+
+#define CC_RSTN_HSE              (CC_RSTN_REG_BANK_6 | 0x06)
+#define CC_RSTN_R2RDSC           (CC_RSTN_REG_BANK_6 | 0x08)
+#define CC_RSTN_EMMC             (CC_RSTN_REG_BANK_6 | 0x0a)
+#define CC_RSTN_NF               (CC_RSTN_REG_BANK_6 | 0x0c)
+#define CC_RSTN_MD               (CC_RSTN_REG_BANK_6 | 0x0e)
+#define CC_RSTN_TPB              (CC_RSTN_REG_BANK_6 | 0x18)
+#define CC_RSTN_TP               (CC_RSTN_REG_BANK_6 | 0x1a)
+#define CC_RSTN_MIPI             (CC_RSTN_REG_BANK_6 | 0x1c)
+
+#define CC_RSTN_TPB_A00          (CC_RSTN_REG_BANK_7 | 0x00)
+#define CC_RSTN_I2C_4            (CC_RSTN_REG_BANK_7 | 0x02)
+#define CC_RSTN_I2C_5            (CC_RSTN_REG_BANK_7 | 0x04)
+#define CC_RSTN_TSIO             (CC_RSTN_REG_BANK_7 | 0x06)
+#define CC_RSTN_VE3              (CC_RSTN_REG_BANK_7 | 0x08)
+#define CC_RSTN_EDP              (CC_RSTN_REG_BANK_7 | 0x0a)
+
+/* 0x98007088 */
+#define IC_RSTN_VFD              0x0000
+#define IC_RSTN_IR               0x0001
+#define IC_RSTN_CEC0             0x0002
+#define IC_RSTN_CEC1             0x0003
+#define IC_RSTN_DP               0x0004
+#define IC_RSTN_CBUSTX           0x0005
+#define IC_RSTN_CBUSRX           0x0006
+#define IC_RSTN_EFUSE            0x0007
+#define IC_RSTN_UR0              0x0008
+#define IC_RSTN_GMAC             0x0009
+#define IC_RSTN_GPHY             0x000a
+#define IC_RSTN_I2C_0            0x000b
+#define IC_RSTN_I2C_1            0x000c
+#define IC_RSTN_CBUS             0x000d
+#define IC_RSTN_USB_DRD          0x000e
+#define IC_RSTN_USB_HOST         0x000f
+#define IC_RSTN_USB_PHY_0        0x0010
+#define IC_RSTN_USB_PHY_1        0x0011
+#define IC_RSTN_USB_PHY_2        0x0012
+#define IC_RSTN_USB              0x0013
+#define IC_RSTN_TYPE_C           0x0014
+#define IC_RSTN_USB_U3_HOST      0x0015
+#define IC_RSTN_USB3_PHY0_POW    0x0016
+#define IC_RSTN_USB3_P0_MDIO     0x0017
+#define IC_RSTN_USB3_PHY1_POW    0x0018
+#define IC_RSTN_USB3_P1_MDIO     0x0019
+
+#endif
-- 
2.24.0


