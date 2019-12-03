Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E964910F91F
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Dec 2019 08:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1XxiA5QazVob0TWDqeNkSL+1GWrUEUXScN5aUWv3EKs=; b=avY795z2srHhkF
	8dX5j0TxXJgBRoZFiE797cVjfjj6n3NTjBnHQW1ESXQVlxC5VssTpkeladPPZNgzdYu9TC8zAu5GZ
	InOMrOqpC96K3udCDZu8mtWmOMf34uWBxfg/QbVgYkj0vHZS1SSHk0iRU/cYAP6S8jkKqq7QHhxt2
	VG4SKanPg7oRcxsef4PVGe1TrJXEFk5qC7dGAmaJYlDMktrbuUA4gs4OlIjfLyG1YmtqcHEEa9n//
	ZfaCR5A1GMKy1+vB+cOCzCqswecQGU5mdASbYMIulREf9Yg6MesqWSNUlfuVgDpWbo/69co2c0VHS
	nXv0qg/97RQ7nre9TSIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2sP-0007bj-9w; Tue, 03 Dec 2019 07:45:41 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ic2s6-0007UW-Qs; Tue, 03 Dec 2019 07:45:24 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xB37jJbZ016008,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xB37jJbZ016008
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 3 Dec 2019 15:45:19 +0800
Received: from james-BS01.localdomain (172.21.190.33) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Tue, 3 Dec 2019 15:45:18 +0800
From: James Tai <james.tai@realtek.com>
To: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Subject: [PATCH 0/6] arm64: Realtek RTD1619 clock and reset controllers
Date: Tue, 3 Dec 2019 15:45:07 +0800
Message-ID: <20191203074513.9416-1-james.tai@realtek.com>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234522_998605_8AE2F88B 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Cheng-Yu Lee <cylee12@realtek.com>,
 linux-realtek-soc@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-riscv@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hi Andreas,

This series adds clock and reset controllers for the Realtek RTD1619 SoC.

Cc: Andreas Färber <afaerber@suse.de>
Cc: Cheng-Yu Lee <cylee12@realtek.com>
Cc: devicetree@vger.kernel.org

cylee12 (6):
  dt-bindings: clock: add bindings for RTD1619 clocks
  dt-bindings: reset: add bindings for rtd1619 reset controls
  clk: realtek: add common clock support for Realtek SoCs
  clk: realtek: add reset controller support for Realtek SoCs
  clk: realtek: add rtd1619 controllers
  dt-bindings: clk: realtek: add rtd1619 clock controller bindings

 .../bindings/clock/realtek,clocks.txt         |  38 ++
 drivers/clk/Kconfig                           |   1 +
 drivers/clk/Makefile                          |   1 +
 drivers/clk/realtek/Kconfig                   |  21 +
 drivers/clk/realtek/Makefile                  |  12 +
 drivers/clk/realtek/clk-pll-dif.c             |  81 +++
 drivers/clk/realtek/clk-pll-psaud.c           | 120 ++++
 drivers/clk/realtek/clk-pll.c                 | 400 +++++++++++++
 drivers/clk/realtek/clk-pll.h                 | 151 +++++
 drivers/clk/realtek/clk-regmap-gate.c         |  89 +++
 drivers/clk/realtek/clk-regmap-gate.h         |  26 +
 drivers/clk/realtek/clk-regmap-mux.c          |  63 ++
 drivers/clk/realtek/clk-regmap-mux.h          |  26 +
 drivers/clk/realtek/clk-rtd1619-cc.c          | 553 ++++++++++++++++++
 drivers/clk/realtek/clk-rtd1619-ic.c          | 112 ++++
 drivers/clk/realtek/common.c                  | 320 ++++++++++
 drivers/clk/realtek/common.h                  | 123 ++++
 drivers/clk/realtek/reset.c                   | 107 ++++
 drivers/clk/realtek/reset.h                   |  37 ++
 include/dt-bindings/clock/rtk,clock-rtd1619.h |  88 +++
 include/dt-bindings/reset/rtk,reset-rtd1619.h | 124 ++++
 21 files changed, 2493 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/realtek,clocks.txt
 create mode 100644 drivers/clk/realtek/Kconfig
 create mode 100644 drivers/clk/realtek/Makefile
 create mode 100644 drivers/clk/realtek/clk-pll-dif.c
 create mode 100644 drivers/clk/realtek/clk-pll-psaud.c
 create mode 100644 drivers/clk/realtek/clk-pll.c
 create mode 100644 drivers/clk/realtek/clk-pll.h
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.c
 create mode 100644 drivers/clk/realtek/clk-regmap-gate.h
 create mode 100644 drivers/clk/realtek/clk-regmap-mux.c
 create mode 100644 drivers/clk/realtek/clk-regmap-mux.h
 create mode 100644 drivers/clk/realtek/clk-rtd1619-cc.c
 create mode 100644 drivers/clk/realtek/clk-rtd1619-ic.c
 create mode 100644 drivers/clk/realtek/common.c
 create mode 100644 drivers/clk/realtek/common.h
 create mode 100644 drivers/clk/realtek/reset.c
 create mode 100644 drivers/clk/realtek/reset.h
 create mode 100644 include/dt-bindings/clock/rtk,clock-rtd1619.h
 create mode 100644 include/dt-bindings/reset/rtk,reset-rtd1619.h

-- 
2.24.0


