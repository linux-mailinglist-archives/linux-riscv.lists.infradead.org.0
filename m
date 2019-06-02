Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5273229E
	for <lists+linux-riscv@lfdr.de>; Sun,  2 Jun 2019 10:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=os7b5c6j9xKAlHQROKYqFGmebmUEnoHz/S9py+pVKK4=; b=qSPy8QxhYYSRwV
	u6qiMWtn0JFuCA/RfntWkIvCFl9/xTZGu3TNTCSca1Aa/c8lr3IMQzUIWXG+PAVghQUGbtbW8lyoR
	U2pxCAYtDSbA+thoAc5vhu+FABCZGX997LX+zk3EamrlQ8xlRsQwG1bHIWwrnSgMIEM5kSVQhwigO
	zoM3gfbV03C8f1/xi6o3JWUKqRfB710DAc1oZRuL1IN+joFnEfPpgudMAD097upIeRyWoPF607ykc
	BfaWRdeZozNgoufv03pfpQuoxhSwOaL5m6ZkY+ZjDrMaMjB/wrqurqJr0RfjIOxomL3AtuWRCz32x
	/EFhAPl1PO2VeI48Y1eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXLUL-0004Vg-2P; Sun, 02 Jun 2019 08:05:09 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXLUH-00040a-3g
 for linux-riscv@lists.infradead.org; Sun, 02 Jun 2019 08:05:06 +0000
Received: by mail-wr1-x42e.google.com with SMTP id e16so941015wrn.1
 for <linux-riscv@lists.infradead.org>; Sun, 02 Jun 2019 01:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RfBHDW1JUK0JUXgOE+kdqfunwUHLMQw5E4XKM+X0x50=;
 b=Tyvn3lJ+Hn+6mfQzesJkf9ymB8lp12DhLOzE57pnw0t2HwmzHbekPVBhV9ktjkQOUu
 6n1/TKoj0feWHdTLe19UJF5vuQpznNybUIch1N7ay9dq2PlleX0vI6soQs+pcv+c3mbH
 QBqUT0tFP0JGOtyZkmoN2T7nChlW57EOUbNQpW+qZezONAtq4Qa33ThOJYBqKVLEwMeP
 S1ji36QbPE3eDuFmgYBcCFULKxjLK0t96h4zrbqtZccyWnxznyI0PzXLMyPfSYdjHSXS
 Qr3zuZir2LJ3g1RdGQyXnSdv50f9xUbKjZVdqOP/aYtbNb5DvVIsMUbSq9TTlWrmWYv+
 9eSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RfBHDW1JUK0JUXgOE+kdqfunwUHLMQw5E4XKM+X0x50=;
 b=Rb8NYr1dNnHLeNUIDI8pZDEj9k5XYXtYCZQnPTEDTo7Xv0Z+v1K4qUVy+Y5yEjz8go
 f/dXmR2Kv7NrAhboa4q+BUC4waTZwuqOvungEArWUTrF5lF2t8dsH9bO5IDne4tFeSw+
 ypV+J6B1XnzvzqSJ/IyDMH0KndGVYET8lSfVpSnPJVWDEVo6GtRrQ2QzG41MVokUT0NG
 QRxs5UckzsMBP0sdIWz5lvIZBJmT2d24Vg838Sp/rd62gZ5iv4uQ+XISGAkMv9ImdQjb
 QdSyAXU5ZhK+75b/8/5iBky8fTsuBSPD/c9wO/IyDrlGNpljHFimmRt0ySnqvOcfna+0
 +uDg==
X-Gm-Message-State: APjAAAWyPZ6ch+XgiREUr99jx4hLJDO+44SbmF+IgV0/VJ0SbcVJiynD
 Sx0Dqf4asYqdFYp9jfJKXNM4GOopZSY=
X-Google-Smtp-Source: APXvYqxPpKahl3szXCf32RQ/nitSGGXreypRU0zl7fD72sSc5cnJlU+IQClL5gRggbEud+D4POIfwQ==
X-Received: by 2002:adf:f350:: with SMTP id e16mr4228612wrp.128.1559462703469; 
 Sun, 02 Jun 2019 01:05:03 -0700 (PDT)
Received: from viisi.fritz.box (217-76-161-89.static.highway.a1.net.
 [217.76.161.89])
 by smtp.gmail.com with ESMTPSA id l190sm10186301wml.16.2019.06.02.01.05.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 02 Jun 2019 01:05:02 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v3 0/5] arch: riscv: add board and SoC DT file support
Date: Sun,  2 Jun 2019 01:04:55 -0700
Message-Id: <20190602080500.31700-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_010505_198541_C7327E1B 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add support for building flattened DT files from DT source files under
arch/riscv/boot/dts.  Follow existing kernel precedent from other SoC
architectures.  Start our board support by adding initial support for
the SiFive FU540 SoC and the first development board that uses it, the
SiFive HiFive Unleashed A00.

This third version of the patch set adds I2C data for the chip,
incorporates all remaining changes that riscv-pk was making
automatically, and addresses a comment from Rob Herring
<robh@kernel.org>.

Boot-tested on v5.2-rc1 on a HiFive Unleashed A00 board, using the
BBL and open-source FSBL, with modifications to pass in the DTB
file generated by these patches.

This patch series can be found, along with the PRCI patch set
and the DT macro prerequisite patch, at:

https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.2-rc1


- Paul


Paul Walmsley (5):
  arch: riscv: add support for building DTB files from DT source data
  dt-bindings: riscv: sifive: add YAML documentation for the SiFive
    FU540
  dt-bindings: riscv: convert cpu binding to json-schema
  riscv: dts: add initial support for the SiFive FU540-C000 SoC
  riscv: dts: add initial board data for the SiFive HiFive Unleashed

 .../devicetree/bindings/riscv/cpus.yaml       | 168 ++++++++++++++
 .../devicetree/bindings/riscv/sifive.yaml     |  25 ++
 MAINTAINERS                                   |   9 +
 arch/riscv/boot/dts/Makefile                  |   2 +
 arch/riscv/boot/dts/sifive/Makefile           |   2 +
 arch/riscv/boot/dts/sifive/fu540-c000.dtsi    | 215 ++++++++++++++++++
 .../boot/dts/sifive/hifive-unleashed-a00.dts  |  67 ++++++
 7 files changed, 488 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/cpus.yaml
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive.yaml
 create mode 100644 arch/riscv/boot/dts/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/Makefile
 create mode 100644 arch/riscv/boot/dts/sifive/fu540-c000.dtsi
 create mode 100644 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts

-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
