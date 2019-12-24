Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92CAE12A1B9
	for <lists+linux-riscv@lfdr.de>; Tue, 24 Dec 2019 14:27:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EkZyxsGnJ+OsWT8rlqAEVI+QRgObV/RZZ8Z5uS9y3Os=; b=gTuf2qPFRSTse73yXqydDdQYu4
	ACV7ca+tR/8vGJB7VXsycrhHSrkzvAaTtjoE0QfA6FM+M8VOVv+9Kccae4oRt+ZVauLL3SkfSYWuI
	I1T44QTHhxxvgHuvr+vMZsQMPNO5OmNgUWVwyp1EdNVy1EAXFow4RoPJ/OqgEScQJtxMQho6eoTSQ
	RbqSkY0vOQTL+92K3AfP5VAtiKSlPEYGfLHUHNMW+hjw/H4BuQKbzkGgXmXGYSvdvmOYHXh/wxCeZ
	j+Glu8Z8lQyHZUNh3TV5FAoCd2QTuHB3mkh1h+8Xz10TZA+I9yipopZkbQrticpigxuGmSm/8WKBU
	cXJRAlzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijkDz-0004PF-2B; Tue, 24 Dec 2019 13:27:47 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijkDv-0004Ow-9v
 for linux-riscv@lists.infradead.org; Tue, 24 Dec 2019 13:27:44 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 77so26336899oty.6
 for <linux-riscv@lists.infradead.org>; Tue, 24 Dec 2019 05:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beagleboard-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=EkZyxsGnJ+OsWT8rlqAEVI+QRgObV/RZZ8Z5uS9y3Os=;
 b=sBHtGhv2g3RY/ZRu7pwLs1cLaPpZqOu/VScpz8EX6NugAlVp0Trbb6LgmOcXByg1Ub
 3ASYVriXnczlwiZx0HPIil55K8x15c8ZWKoFF2fj3Y/YrILm3Tf3SVjSKSurOjiODwP+
 T5CpFKB2tVgxCjL9Jy+8y/8mCThsekynLfsA9X6w86MBurzIbJyvHh8cS+F2GPTainSf
 aU/e69PYgw9Pat+Lwq1bzoUKpgSngactvC6y8oA6/lw7hx3SMeY/nRk4dIvslwUVXBoO
 NG5WB3PIGe39YGb217wyfdi5g/acwoUmShaiaZRLV3KNzdVVPILgka6bnhL1lFHaudVv
 x8wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=EkZyxsGnJ+OsWT8rlqAEVI+QRgObV/RZZ8Z5uS9y3Os=;
 b=JLxzim+NFEd6kwgoMKzhVuu1oBkoTKc+NIuHAKSZ7C6+WNBjYCbBc5QvRTQW2W7391
 ZfpmchyWtFjZ1hohVUt8IAnOYw2FOafEbfbVyOkKIvvetoR1uRnp74HJk43k7+l0Dcrz
 WQIEOFuQqBvsvbhHZG0vU0ti7/hVXRCaurvrdxIpF+Lwyk96oq9gGM2RKKu62kJUqfoG
 YPV8jFYqLivSH8tI24JHgRvxCo+29k2z0TwdB+0pwVWwFoITagr9mdyhtNRqKkfUI2MJ
 mQemirLXfC7NVJhSTntJXpu6iwToYaQF29eRaTcts0si2LbkE7PnscAiG8htqEoFwcsC
 cItw==
X-Gm-Message-State: APjAAAUSrGarn/3G8+wFx8zu/HaxfXiBUh52OSFE5P2Ttsw5DUcKSjNf
 qOIYQicWRh0w74V8Z2zSZ2n7QkGkuUzikjgyBkDE/KCOhqp9wmExMHI=
X-Google-Smtp-Source: APXvYqxIaoeaSzxWUjrqk5ix+68ZuAKw/3qTdWwKa853fATewi9Iys0OfTvZx5IR9eWDhEE+hsMu75h5/UdK8qc051k=
X-Received: by 2002:a9d:7593:: with SMTP id s19mr36216850otk.219.1577194061997; 
 Tue, 24 Dec 2019 05:27:41 -0800 (PST)
MIME-Version: 1.0
From: Drew Fustini <drew@beagleboard.org>
Date: Tue, 24 Dec 2019 14:27:31 +0100
Message-ID: <CAPgEAj6edQiTtXkau+E5hSb=RcQ7vjv=kTN0yAmgbOYXEx0+Dw@mail.gmail.com>
Subject: Current options for Linux on RISC-V?
To: linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_052743_374594_FA66CD87 
X-CRM114-Status: UNSURE (   4.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:32e listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Hello, I'm giving a talk about Linux, Open Source Hardware and RISC-V
this Sunday at the Chaos Communication Congress (36c3) in Germany [1].

I want to make sure I am up-to-date about the current ways that people
could run Linux on RISC-V:

- QEMU on x86 (Fedora / Debian)
- SiFive Freedom Unleashed board (unfortunately expensive)
- Kendryte K210 (NOMMU, limited SRAM, I am not sure how to reproduce
the LPC demo) [2]
- RISC-V soft core on Xilinix or Altera FPGA with proprietary toolchain
- LiteX-On-Linux with VexRIscV on Lattice ECP5 FPGA with and open
source tools (trellis, yosys, nextpnr)
- Microchip/MicroSemi PolarFire SoC (stil coming soon?)
- Future: OpenHW Group and NXP making RISC-V iMX-style SoC?

Any other options that I missed?

Thank you,
Drew

[1] https://fahrplan.events.ccc.de/congress/2019/Fahrplan/events/10549.html
[2] https://youtu.be/ycG592N9EMA?t=10394

