Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0421410122
	for <lists+linux-riscv@lfdr.de>; Tue, 30 Apr 2019 22:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xmP0S1ydMQOxl7QA8F/9pq7dzuRgBZcQPqOwGsw46Mc=; b=KRugpMVti58VdS
	F36hk9PPN3kpB2tOjZYthUFNrhHs9WeQgiqYXqAQTS5NHEqR0cEWraz0EkHXoXISF6xaGU3hPdVPn
	pIZMeGMxe7/rVXuq99AN4A6n0FsL30OzDrcVb+3p7I2tNS+zAyxmqmVik5xAIZ/Jgt2UtMNk6EOkj
	cDsSnqqFQFY0PufGAwOPc5/mTiYez8CMk9SccMHLWASRfhtx13RE7hsUj1/CrQQ24Le6Xaja3ih6b
	rR4Rs3SjJGvMSFkzkAcAxProabdoI3z1SKKqRB54aJvHJ0XWCaZMKQh/Cjde1/PG7pV5NrlT8Kl53
	4ZPYiw8Uc5xzi3JpxTYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLZiy-0002xa-Th; Tue, 30 Apr 2019 20:51:36 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLZiu-0002x9-Dn
 for linux-riscv@lists.infradead.org; Tue, 30 Apr 2019 20:51:34 +0000
Received: by mail-it1-x142.google.com with SMTP id q14so7078405itk.0
 for <linux-riscv@lists.infradead.org>; Tue, 30 Apr 2019 13:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vjQtX5qzbngzO6WItWUMVIwx0kzAkLppgcgbD0Y95uE=;
 b=F0uIwwoWKlnBD0zMndyAUgxMQWgstX0DeGWUgyikUtD+ZL9Ef8bN9f0oJWQaWvbvFw
 85rBa8HLz4CIBild/BejxfpIYzucwPsZm6jNgFcwBaor5feaM/EmRCNpKIO43DZKx8Z9
 RwbJnPR6SrC7LuwVrwXPZRsPeIPcKimDfH7G3OZm6AFNMPjYVAZfbjoaZpBNYC1+/gzW
 FCxn8taXvl4WOtg0aS9EwvN9AhMSCgSmg8Mir1WWq1AuBHTLsb0E9rq95fRSubl/25Gm
 IM3Zq8AI4oezyB5rIGxoW/eLLFOuIs/akYM/TWigLwLLqaIfMEnXr/0NEfNvfYfXwT8I
 GbPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=vjQtX5qzbngzO6WItWUMVIwx0kzAkLppgcgbD0Y95uE=;
 b=jMwhbu4uexoyOSnIENw56RKjHqYREgKHopF4dkP8ZWLgLEIlILseIFWTEGFbjNUEoH
 /1gsBuVn0OXMLggjNJlMeY+X3cFvas+RF3K+uOSOWE+Ko0i+RsyG2g+5dLLr4EkLqPs/
 09CuzPe4p2x32PeKeaSV/hFfYo2iOhlhtrkAzqDeehIZpFQL4bihD05uDZzw5bHbVL6A
 NMERlam+3qM+N7a1pLSVjNCK+yR+V7SuUTiYWm/6a18+ZoUoQ4/+ZKzygo7lYWgl252M
 1pvPizt9m8tyvJL/ar2+Oyms16oO4wmRLUR/S30MpTsBK1hUxXeqT5Oh1k56ouIV/E1y
 tNQw==
X-Gm-Message-State: APjAAAXVeXixUxdplYeFhxLM6N2fnF8ZjPADVdzxI/7qFUEMK55OuL+/
 0LlYkd8z+yM+IcjZkdmzWKzpxg==
X-Google-Smtp-Source: APXvYqx8LPqX8+1jPVWOhnE83hohCgwnay3/bNio9Sr2ZTQMCvXG1lYnXsfpJOWygz06tzC47v2Dug==
X-Received: by 2002:a24:7688:: with SMTP id z130mr5167604itb.57.1556657490516; 
 Tue, 30 Apr 2019 13:51:30 -0700 (PDT)
Received: from viisi.lan (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 v134sm1998052ita.16.2019.04.30.13.51.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 13:51:29 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: sboyd@kernel.org,
	mturquette@baylibre.com
Subject: [PATCH v4 0/2] clk: add driver for the SiFive FU540 PRCI and PLLs it
 controls
Date: Tue, 30 Apr 2019 13:50:55 -0700
Message-Id: <20190430205055.25673-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_135132_508430_B1BFC970 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

clk: add driver for the SiFive FU540 PRCI and PLLs it controls

Add a driver for the SiFive FU540 PRCI IP block, which handles clock and
some device reset control for the SiFive FU540 chip.  Also add a driver-
independent library for the Analog Bits Wide-Range PLL (WRPLL), used by
the PRCI driver to monitor and control the WRPLL instances on the FU540
chip.

This fourth version incorporates changes requested by Stephen Boyd
<sboyd@kernel.org>.  The DT bindings patch has been dropped since
Stephen has already queued it.

This patch series is also available, with the binding documentation
patch, at:

   https://github.com/sifive/riscv-linux/tree/dev/paulw/prci-v5.1-rc7

Boot-tested on a SiFive HiFive Unleashed board, using BBL and the
open-source FSBL with a mainline-focused DTB, using the following
composite test branch:

   https://github.com/sifive/riscv-linux/tree/dev/paulw/dts-v5.1-rc7-experimental


- Paul

Paul Walmsley (2):
  clk: analogbits: add Wide-Range PLL library
  clk: sifive: add a driver for the SiFive FU540 PRCI IP block

 MAINTAINERS                                   |   6 +
 drivers/clk/Kconfig                           |   3 +
 drivers/clk/Makefile                          |   2 +
 drivers/clk/analogbits/Kconfig                |   2 +
 drivers/clk/analogbits/Makefile               |   3 +
 drivers/clk/analogbits/wrpll-cln28hpc.c       | 364 ++++++++++
 drivers/clk/sifive/Kconfig                    |  18 +
 drivers/clk/sifive/Makefile                   |   1 +
 drivers/clk/sifive/fu540-prci.c               | 630 ++++++++++++++++++
 include/linux/clk/analogbits-wrpll-cln28hpc.h |  79 +++
 10 files changed, 1108 insertions(+)
 create mode 100644 drivers/clk/analogbits/Kconfig
 create mode 100644 drivers/clk/analogbits/Makefile
 create mode 100644 drivers/clk/analogbits/wrpll-cln28hpc.c
 create mode 100644 drivers/clk/sifive/Kconfig
 create mode 100644 drivers/clk/sifive/Makefile
 create mode 100644 drivers/clk/sifive/fu540-prci.c
 create mode 100644 include/linux/clk/analogbits-wrpll-cln28hpc.h

-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
