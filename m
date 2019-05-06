Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74D014A4B
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 14:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F4/+8LRXKFQQ5QmtuL2x/PEq7+Rp2uQ8fk/4LJD7Ss8=; b=p2MCi1zJbuGyU+
	KeRJCEvpp6yonm+mthhqCLKbkobvzi4nc0lm3+uHou5vujTMlmUnnYqhMnifWhXAHpkNm6uWpG7SA
	aIm2ftg7z4NoyeJZidDikIj0B5qaEL9qPyNGZEbCRof7gs6QBcZ8x/XJpjrZDcFEVmpyU7TbkUw/b
	wkIymVXmopSIt6efrsdxC/Rg+fLHE9ckttmwBenkOqtwc5L3BSLJa19ReJOrI3XciBPFyVLR5xZqW
	QUUmZnrN4lAvYVmFHFXgPZnsMjEXi6mFP/d+ZVWSOKpp0qN6vFC8MiBhTUu580Yj7EoRhHcMy/oSk
	2lUH244+SG07sVQRVlYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNd8Z-0000fx-ET; Mon, 06 May 2019 12:54:31 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNd8U-0000ec-1B
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 12:54:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id x15so6336163pln.9
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 05:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id;
 bh=mCH1PNSxZO8UcLFwRskob8mKkP1s690Icm959QBwtxU=;
 b=Pa0zYFaooyEYnq8TNhjhsXUlNZTUn09rsJ8MbLtbutJ3aBNJVK6GoB0Ieeo+ivQPKH
 c29gKxZLq9jfmaUkDPJXGoeQHFZ+BqEepzvbmCpuhplKrHOfsUx5dtQ2hoWnuP3KSMmi
 3MQrQ34bAG4govn9tRpYpXMp4e+AIB/LMZZy1ddaiJJL3MkeNGe/nFKNsR+1CxPEQgz4
 M1D8ORQk6cXBjqrBe0oduIqsMaZvCY0bSEx1GxZ4JiISvRxvYjeJnlcfs/i8rRRkSG6j
 nlv88TJUpQauJaa04VxyQrfrXjIRfJHUolR7Wt1P1ld8gBk+MTDanS7ULH4jCR6an06c
 GhDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=mCH1PNSxZO8UcLFwRskob8mKkP1s690Icm959QBwtxU=;
 b=WMujcd06SHAD19axcYYU9ukQB+xJ1Zus06zxqwxNpn79dzdot0LLJS/iu5AHYFKieB
 42taQwmMl6/jVeU5PBjDBMqC3HaKWYvNlCrSeokXhiQ4HM7H4c9BitLpemDpt0gC1gQw
 Iklabzk3VaBy3LQmd5rguMiO6/3YYj8UUPiZv8TVz/qiYU3HakhzFb/uEov4KlFayS1Q
 bCf7efVYMDrLOO9+R7F/kfldXiYOFLCkUZw/HR+IoE8U+hqqp6z41y8yM1biTkMZu/zN
 bB6Un2o2RCoJxPTNXuECBcTTpilprZDw2wMvDnIRg4Yx+lypUDkPSfyRKyXQym9tVlPQ
 YOeQ==
X-Gm-Message-State: APjAAAXtV8AXLQT88Gr+ZLmeE6MUrLY57GHCweFcLMQZW6ejQCq2JxrT
 DVdRpWBg3xg83w2HABzVeWUdlQ==
X-Google-Smtp-Source: APXvYqzA7OlsB9Sxuwz64C70xfdtuDDDGNwfRbcLFQfRJu2C+ztVPX59gkK/uUwSuBXaxJYg8WdB9g==
X-Received: by 2002:a17:902:2dc3:: with SMTP id
 p61mr31847462plb.308.1557147264714; 
 Mon, 06 May 2019 05:54:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id p81sm18031132pfa.26.2019.05.06.05.54.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 05:54:24 -0700 (PDT)
From: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, palmer@sifive.com,
 paul.walmsley@sifive.com, sagar.kadam@sifive.com, peter@korsgaard.com,
 andrew@lunn.ch, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v1 v1 0/3] Add dt bindings to support I2C on sifive devices
 and a fix for polling mode i2c transfers.
Date: Mon,  6 May 2019 18:23:57 +0530
Message-Id: <1557147240-29551-1-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_055426_117816_72B51934 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The patch is based on mainline v5.1 and is intended to add DT-bindings for Opencore based I2C device 
support in FU540 SoC, available on HiFive unleashed board (Rev A00), and also provide a workaround to 
make I2C polling mode interface work with FU540 chipsets.

The polling mode workaround patch fixes the CPU stall issue, when-ever i2c transfer are initiated 

This workaround checks if it's a FU540 chipset based on device tree information, and check's for open
core's IF(interrupt flag) and TIP flags to break from the polling loop upon completion of transfer.

To test the patch, a PMOD-AD2 sensor is connected to HiFive Unleashed board over J1 connector, and 
appropriate device node is added into board specific device tree as per the information provided in 
dt-bindings in Documentation/devicetree/bindings/i2c/i2c-sifive.txt.
Without this workaround, the CPU stall's infinitely.

Busybox i2c utilities used to verify workaround : i2cdetect, i2cdump, i2cset, i2cget


Sagar Shrikant Kadam (3):
  dt-bindings: i2c: add documentation for adding SiFive I2C driver
  i2c-ocore: sifive: add support for i2c device on FU540-c000 SoC.
  i2c-ocores: sifive: add polling mode workaround for FU540-C000 SoC.

 .../devicetree/bindings/i2c/i2c-sifive.txt         | 29 +++++++++++++++++++
 drivers/i2c/busses/i2c-ocores.c                    | 33 +++++++++++++++++++---
 2 files changed, 58 insertions(+), 4 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/i2c-sifive.txt

-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
