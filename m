Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F771A72B5
	for <lists+linux-riscv@lfdr.de>; Tue, 14 Apr 2020 06:43:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=a+aVabeErp+lpUnyqEye6Tc7st87uw1AIj+V32eQwlE=; b=GV/NbtFVl5sRpq
	RfV/tMqUhHRgfQ72uNtaOCvlz7uGAQDJYSwjppQXHeexwLbVKeLay3N29dl7PdXg72oj3VWGWzSs0
	QEWC8rWKbpwlhwq6aXX8p+yTlmbIngMJA1WHzQ+KSiToFp0r0YXXCM8O5fR9amRPKlm5BG4evLBYT
	38w0c4D8sa+ATSxX2Yotge7hd1baJ4cUfalQzUSl/xrExghivppZek4b10BKHYa6q8EJFzTutA7Ec
	s7/P94RhafwUH81XAeEtQJL3SQFdXXwxEMTXbIeShrdagK922IynDZtzYo2LlhaTXB6thkx3gZAZc
	Gs+FAIwrhsGCWuKltNcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jODQ7-00073w-6i; Tue, 14 Apr 2020 04:43:35 +0000
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jODQ3-00071l-VK
 for linux-riscv@lists.infradead.org; Tue, 14 Apr 2020 04:43:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1586839412; x=1618375412;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e2cyukFmHpm3iEWuvdRyp9/5ziEYid/9th/BZ01nyHc=;
 b=Tqi2R5s5Sy7D9Jf0mdesD0wIob+x4reCdq+I13kf5WuwQb1ZGG8KQvX3
 32hH2E5w2ClEQnMXOQvaOEJDr6YrukxCVTM7gwr4PoqdRLkGZA8QlTy5R
 2PwNCF/PBt9x0U8Pr+WkuKB8jb6f6jDarcquUdvuqZjCWt4RyzQTmiGgE
 PZULaxMJSOtrOIJdKLdd5fpqtMSNvLzXYG6fLWjqyzTnAl+HYJ15q45zv
 cHEWCSlDqVgVbWayX14r09osJUM6uf0wAC3MKhaOwxm6i+9A4NRqASyP8
 zCZXTidWypaxq2mR6DWSX+Rm8nTrOdytO3b7EqORXoeJGvZdeJDoBDsx4 A==;
IronPort-SDR: 56WVPyhjQa5x5ik8syJ/DUmKz/qLPMNTlFx87VV+3wDGYCWzxa1YgYVFBw4rOtgYEBwGeIEYYW
 /qVloq/H6hIHpfOEPAsSFN52NkOAO6S5HxT5gTAQndov0ocOrtW2Cu03XQ9kDzRUp4P3fME/5n
 gxwn/tvfgxu4LCHYS5JjaIMOFT0b1RBAdFsnEzQBz/vsUY/CsPpncZ6GgR74halMgaFqin4pGc
 3vKizISEZNi9XO/AXt/U+NXOrCyvqaLLgMSbrKzSGUdwQzYysqfqYE06Zu+8L4hIY0Pa6Pu24M
 /qQ=
X-IronPort-AV: E=Sophos;i="5.72,381,1580745600"; d="scan'208";a="139605672"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 14 Apr 2020 12:43:29 +0800
IronPort-SDR: kzSB3gH9trczVSstim2cgF5WEx+WUFqgW2wnxhEXOIww1bu1C3JK2+yrPuCF2XyLeedDsy+Ine
 8+DSTs/UDubtZsLDsE/UxoiRcMB8LuPk/IUTbO2J+1zCWTgNW5036ZeDXFsFr95d5csfxeShYi
 PrLvHZ2YZYP78McRqBXqDFkfyP3kC/M3SwNm5ZjOpIgBjZeoa5U01EfWimXdcbUDp/SpvHMuSh
 8fXIsmr95FH3Zl16QJA55JsNONv9W9KhNHCnIwmdpvIQZNO3thS4OX2+wN5y1enEZ16K+5gXsQ
 XorD36AOPUbz6uHh1j+FeT4N
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 21:33:59 -0700
IronPort-SDR: bYGaPJx6HreoiqRIbl2KKds48KT2DhRFBJ4wnErvnPDJCKqbIekJq43MCfIzDmcVJrrLrEN8Ty
 tQn/0YCF6uKaDu2ZW0WVfqThlrBL9jH2BMDyp3jkGnf3zMtq6ZLS2NqJNPz+oL5xkEON2MdrZJ
 lgdg4gNeyOGWnmjsTsUt5KUjM7o2hsQyt54pfZpNrroc3wVdCO5MygdP3U5S1fSfgnfGy3cRxE
 6QDTdijfzvYhqIboZw4Wew4moRYFR5mVOvP+eVI7hdopHJ48eRZi99IQbVLMuhDXIw0sMJXVEY
 NZE=
WDCIronportException: Internal
Received: from 2768r8lbtd9.hitachigst.global (HELO localhost.hgst.com)
 ([10.84.70.38])
 by uls-op-cesaip02.wdc.com with ESMTP; 13 Apr 2020 21:43:28 -0700
From: Damien Le Moal <damien.lemoal@wdc.com>
To: linux-riscv@lists.infradead.org,
	Palmer Dabbelt <palmer@dabbelt.com>
Subject: [PATCH 0/3] K210 support fixes
Date: Tue, 14 Apr 2020 13:43:23 +0900
Message-Id: <20200414044326.103884-1-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_214332_043865_3969F0E8 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <Anup.Patel@wdc.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer,

The first 2 patches of this series are your patches for the builtin DTB
fixed up and tested. The third patch adds necessary updates to the
K210 defconfig. Please review.

Damien Le Moal (1):
  riscv: K210: Update defconfig

Palmer Dabbelt (2):
  riscv: Allow device trees to be built into the kernel
  riscv: K210: Add a built-in device tree

 arch/riscv/Kbuild                       |  1 +
 arch/riscv/Kconfig                      |  5 ++++
 arch/riscv/Kconfig.socs                 | 17 ++++++++++-
 arch/riscv/boot/dts/Makefile            |  2 ++
 arch/riscv/boot/dts/kendryte/Makefile   |  4 ++-
 arch/riscv/configs/nommu_k210_defconfig |  7 ++---
 arch/riscv/include/asm/soc.h            | 39 +++++++++++++++++++++++++
 arch/riscv/kernel/setup.c               |  4 +++
 arch/riscv/kernel/soc.c                 | 27 +++++++++++++++++
 arch/riscv/kernel/vmlinux.lds.S         |  5 ++++
 arch/riscv/mm/init.c                    |  9 ++++++
 drivers/soc/kendryte/k210-sysctl.c      | 12 ++++++++
 12 files changed, 125 insertions(+), 7 deletions(-)

-- 
2.25.2


