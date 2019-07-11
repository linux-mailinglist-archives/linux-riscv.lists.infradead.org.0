Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FAD265F59
	for <lists+linux-riscv@lfdr.de>; Thu, 11 Jul 2019 20:09:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X14yq5KTbHV8BZ+YBPhKmRGiyJRxpVwOk5QSE2dLb8E=; b=UFyehGSbxQYVDI
	TMVXrcXYHarQo1t2zDlDzPWwm3eI3C+DZ+IzMpf7YfWovx4wzXmHlFG35yPt8Y20zZNej6nd7BUr4
	wsHPEu+QkTp4VLH6+Y8ys9miD0OXTrrs/w+PiOQ1dWS8Yi8Iz+0zc45dhpblUyIHa86EvBqqSkXJK
	gg/N+Ku3rL5Dd093TmGCnbhF4/wDz2YUSZMluOBQtBpFDl/73dzisdvb2d1vK9pWPgX3H6t9CVoAW
	OKTCQzPp8kbsky8e+0h7Krms/KfnjXTCNWT8fZJ0IGugv7YQUW+eT9Y+jx0vKbaC3IVR9ZgUj4Utu
	mI7pB8i4t+fBs5YZC1zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hldVH-0003ce-KH; Thu, 11 Jul 2019 18:09:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hldVC-0003by-0W
 for linux-riscv@lists.infradead.org; Thu, 11 Jul 2019 18:09:08 +0000
Received: by mail-lj1-x244.google.com with SMTP id t28so6716558lje.9
 for <linux-riscv@lists.infradead.org>; Thu, 11 Jul 2019 11:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ORSK7hrVpr4bYzzw0/gUGtg9vUuOQ0n4iwS740ZT3Yc=;
 b=dMIDOVMSnU2LjS9j22H7KtwQ3UWDt23hyWr8HWJd5lyZ5NHmI4uUikZIThmvO5Jgbi
 LymLiryMUiSxckVYp6lBjWKL71XXwrU3S2F2bJryk+VzihNwe7iEI0m+NQj7y1ZXh2Zf
 rj8b7OZpAIwNRMJ7Cb2enHyw7v14d+V+x3HoQ1ipLSMhvin/m2IJfQs2+59DbncrylSQ
 EUK81lNHcVZ3mfwXJw7+aOf2USw5ein1HziKBH/Ui7Jvk7Zz4uB+j0hHJVtUnnJvUaNW
 nxTS4ncX0ZqqZ0MyamcYm9OxlshEdnzX8mxlkzuE7i8+8HY+W0mhh9+4iLMi34Uj8aIK
 3s0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ORSK7hrVpr4bYzzw0/gUGtg9vUuOQ0n4iwS740ZT3Yc=;
 b=TwckqHxcwAZxW/1o0k0Hk45g9FezL02420b86V+6tbD2wF+uDOPBXIBilei4QOmsLn
 FF8ip/Dmse9oxG01VnaHIPZyPj5/U9rp6UL0r6nr9OPfLbkOgXKJYUtS5mtwNE0FgAfG
 LghYFL0yDfatkDmk9bkArWhdtfx+P3xJErI3wKThlIX8mjFszE2EJKks1QMhAQ3Hvyjy
 RhwoenGe7ETSHfuCPWT/UgzT02BQeCbwNPeF4PtvucbbMvEu4jdJTdIZoJuMHkO65IdN
 xtVVBw6lo42QLi3lQs0sVlqcLO1OrfwH88QOuL+3cU6ExNLmhXORMGryzEhlyShRq7mS
 WwfA==
X-Gm-Message-State: APjAAAVBNDPxpv+RFI7mS6Id7SeQNXzylFQimai+ea20GjMRCu2CFROQ
 QOhq2ms6akabINBFG5ckuH/PuIrqqx0mcw87r1VBl3KduJU=
X-Google-Smtp-Source: APXvYqxlS0qyE9PGpmfT0byhvGKCbT3MWotmpYnYB/Tw0T2v/hcWiqcSuM91cQYi+b/qoWFsJjFZ3uYPDyysHUDZffE=
X-Received: by 2002:a2e:9188:: with SMTP id f8mr3347332ljg.33.1562868543486;
 Thu, 11 Jul 2019 11:09:03 -0700 (PDT)
MIME-Version: 1.0
References: <20190228223257.6189-1-alistair.francis@wdc.com>
 <056edacd-a998-277c-f0de-1aac256165a2@arm.com>
 <CAKmqyKP8nwkxyJ+gi2PMj6pgNVvMnWwdjdgXVYz+vAJFmhR1dQ@mail.gmail.com>
 <dd0af314-0f0b-8c10-2c68-a2cbd1bb0f03@arm.com>
In-Reply-To: <dd0af314-0f0b-8c10-2c68-a2cbd1bb0f03@arm.com>
From: Alistair Francis <alistair23@gmail.com>
Date: Thu, 11 Jul 2019 11:05:50 -0700
Message-ID: <CAKmqyKOham9pKgy2rXECE6fntZAV_PBgY61rkMh+weeQstuv6A@mail.gmail.com>
Subject: Re: [PATCH] Revert "of/device: Really only set bus DMA mask when
 appropriate"
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_110906_097035_9952F19F 
X-CRM114-Status: GOOD (  25.38  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alistair23[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (alistair23[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: "robh@kernel.org" <robh@kernel.org>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Atish Patra <Atish.Patra@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

 On Thu, Jul 11, 2019 at 4:01 AM Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi Alistair,
>
> On 10/07/2019 23:27, Alistair Francis wrote:
> > On Thu, Feb 28, 2019 at 2:42 PM Robin Murphy <robin.murphy@arm.com> wrote:
> >>
> >> On 2019-02-28 10:33 pm, Alistair Francis wrote:
> >>> This reverts commit 6778be4e520959659b27a441c06a84c9cb009085.
> >>>
> >>> Reverting the commit fixes these error messages and an non-functioning
> >>> USB bus when attaching a USB to PCIe card to a RISC-V board:
> >>>       xhci_hcd 0000:03:00.0: Host took too long to start, waited 16000 microseconds.
> >>>       xhci_hcd 0000:03:00.0: startup error -19
> >>>       xhci_hcd 0000:03:00.0: USB bus 2 deregistered
> >>>       xhci_hcd 0000:03:00.0: WARNING: Host System Error
> >>>       xhci_hcd 0000:03:00.0: remove, state 1
> >>>
> >>> Signed-off-by: Alistair Francis <alistair.francis@wdc.com>
> >>> ---
> >>> I'm not sure if this is the correct fix, it's possible something else is
> >>> wrong, but I wanted to get some feedback.
> >>
> >> Given that the bug which this revert would reintroduce cripples DMA on
> >> just about every 64-bit DT system, probably not. Can you clarify what
> >> your DT looks like, and turn on the debug output for of_dma_get_range()
> >> to see what it says?
> >
> > Hey Robin,
> >
> > We were just talking about this today and somebody pointed out that I
> > never replied to you. I'm sorry, I must have missed your email.
>
> No worries - ISTR that shortly after asking I managed to find a
> breadcrumb trail to a DT somewhere on Github which satisfied my curiosity.
>
> I would agree with Paul's diagnosis, i.e. all evidence suggests that the
> host bridge is constrained to passing 32-bit addresses to the rest of
> the system. Thus the superficial problem is that you don't have the

Yes, that is my understanding as well. The PCIe controller is based on
the Xilinx one which also has the same problem. So both are limited to
32-bit addresses only.

> relevant "dma-ranges" to describe that, but upon fixing that you'll
> immediately find the latent bigger problem that all the relevant parsing
> is fundamentally incompatible with the way we currently stuff the host
> controller node into of_dma_configure(). I'm working on that right now,
> although it's proving tricky to find a balance between "too hacky" and
> "massively intrusive"...

Ah ok. So I think I'm going to keep this hack patch in my local tree
as it let's me use a USB -> PCIe bridge. Then when you have a solution
to the of_dma_configure() problem I will look at setting a correct
dma-ranges value in the DT and I can test it then. If you remember can
you CC me on your patches? I can help test them then.

Thanks for the help Robin.

Alistair

>
> Robin.
>
> > To answer the question the DT looks like this:
> >
> > / {
> >          soc {
> >                  pcie: pcie@2030000000 {
> >                          #address-cells = <0x3>;
> >                          #interrupt-cells = <0x1>;
> >                          #size-cells = <0x2>;
> >                          compatible = "microsemi,ms-pf-axi-pcie-host";
> >                          device_type = "pci";
> >                          bus-range = <0x01 0x7f>;
> >                          interrupt-map = <0 0 0 1 &ms_pcie_intc 0 0 0 0
> > 2 &ms_pcie_intc 1 0 0 0 3 &ms_pcie_intc 2 0 0 0 4 &ms_pcie_intc 3>;
> >                          interrupt-map-mask = <0 0 0 7>;
> >                          interrupt-parent = <&plic0>;
> >                          interrupts = <32>;
> >                          ranges = <0x3000000 0x0 0x40000000 0x0
> > 0x40000000 0x0 0x20000000>;
> >                          reg = <0x20 0x30000000 0x0 0x4000000 0x20 0x0
> > 0x0 0x100000>;
> >                          reg-names = "control", "apb";
> >                          ms_pcie_intc: interrupt-controller {
> >                                  #address-cells = <0>;
> >                                  #interrupt-cells = <1>;
> >                                  interrupt-controller;
> >                          };
> >                  };
> >          };
> > };
> >
> > and this is what the debug output looks like:
> >
> > ...
> > [    0.071003] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    0.071049] microsemi-pcie 2030000000.pcie: device is not dma coherent
> > [    0.071084] microsemi-pcie 2030000000.pcie: device is not behind an iommu
> > [    0.071924] microsemi-pcie 2030000000.pcie: host bridge
> > /soc/pcie@2030000000 ranges:
> > [    0.071990] microsemi-pcie 2030000000.pcie: Parsing ranges property...
> > [    0.072007] microsemi-pcie 2030000000.pcie:   MEM
> > 0x40000000..0x5fffffff -> 0x40000000
> > [    0.072160] microsemi-pcie 2030000000.pcie: PCI host bridge to bus 0000:00
> > [    0.072201] pci_bus 0000:00: root bus resource [bus 01-7f]
> > [    0.072237] pci_bus 0000:00: root bus resource [mem 0x40000000-0x5fffffff]
> > [    0.072272] pci_bus 0000:00: scanning bus
> > [    0.072307] pci 0000:00:00.0: [11aa:1556] type 01 class 0x060400
> > [    0.072376] pci 0000:00:00.0: reg 0x10: [mem 0x00000000-0x7fffffff
> > 64bit pref]
> > [    0.072520] pci 0000:00:00.0: supports D1 D2
> > [    0.072555] pci 0000:00:00.0: PME# supported from D0 D1 D2 D3hot D3cold
> > [    0.072592] pci 0000:00:00.0: PME# disabled
> > [    0.073250] pci_bus 0000:00: fixups for bus
> > [    0.073261] pci 0000:00:00.0: scanning [bus 00-00] behind bridge, pass 0
> > [    0.073270] pci 0000:00:00.0: bridge configuration invalid ([bus
> > 00-00]), reconfiguring
> > [    0.073338] pci 0000:00:00.0: scanning [bus 00-00] behind bridge, pass 1
> > [    0.073423] pci_bus 0000:01: scanning bus
> > [    0.073764] pci 0000:01:00.0: [11f8:8561] type 01 class 0x060400
> > [    0.074549] pci 0000:01:00.0: enabling Extended Tags
> > [    0.077512] pci 0000:01:00.0: PME# supported from D0 D3hot D3cold
> > [    0.077571] pci 0000:01:00.0: PME# disabled
> > [    0.077842] pci 0000:01:00.0: 16.000 Gb/s available PCIe bandwidth,
> > limited by 5 GT/s x4 link at 0000:00:00.0 (capable of 126.016 Gb/s
> > with 8 GT/s x16 link)
> > [    0.090347] pci_bus 0000:01: fixups for bus
> > [    0.090367] pci 0000:01:00.0: scanning [bus 00-00] behind bridge, pass 0
> > [    0.090375] pci 0000:01:00.0: bridge configuration invalid ([bus
> > 00-00]), reconfiguring
> > [    0.090522] pci 0000:01:00.0: scanning [bus 00-00] behind bridge, pass 1
> > [    0.090992] pci_bus 0000:02: scanning bus
> > [    0.091134] pci 0000:02:00.0: [11f8:8561] type 01 class 0x060400
> > [    0.091883] pci 0000:02:00.0: enabling Extended Tags
> > [    0.095138] pci 0000:02:00.0: PME# supported from D0 D3hot D3cold
> > [    0.095198] pci 0000:02:00.0: PME# disabled
> > [    0.095724] pci 0000:02:01.0: [11f8:8561] type 01 class 0x060400
> > [    0.097486] pci 0000:02:01.0: enabling Extended Tags
> > [    0.099562] pci 0000:02:01.0: PME# supported from D0 D3hot D3cold
> > [    0.099622] pci 0000:02:01.0: PME# disabled
> > [    0.101335] pci 0000:02:02.0: [11f8:8561] type 01 class 0x060400
> > [    0.103141] pci 0000:02:02.0: enabling Extended Tags
> > [    0.105219] pci 0000:02:02.0: PME# supported from D0 D3hot D3cold
> > [    0.105278] pci 0000:02:02.0: PME# disabled
> > [    0.106874] pci 0000:02:03.0: [11f8:8561] type 01 class 0x060400
> > [    0.107626] pci 0000:02:03.0: enabling Extended Tags
> > [    0.110896] pci 0000:02:03.0: PME# supported from D0 D3hot D3cold
> > [    0.110955] pci 0000:02:03.0: PME# disabled
> > [    0.112929] pci_bus 0000:02: fixups for bus
> > [    0.112950] pci 0000:02:00.0: scanning [bus 00-00] behind bridge, pass 0
> > [    0.112958] pci 0000:02:00.0: bridge configuration invalid ([bus
> > 00-00]), reconfiguring
> > [    0.113089] pci 0000:02:01.0: scanning [bus 00-00] behind bridge, pass 0
> > [    0.113097] pci 0000:02:01.0: bridge configuration invalid ([bus
> > 00-00]), reconfiguring
> > [    0.113225] pci 0000:02:02.0: scanning [bus 00-00] behind bridge, pass 0
> > [    0.113233] pci 0000:02:02.0: bridge configuration invalid ([bus
> > 00-00]), reconfiguring
> > [    0.113360] pci 0000:02:03.0: scanning [bus 00-00] behind bridge, pass 0
> > [    0.113368] pci 0000:02:03.0: bridge configuration invalid ([bus
> > 00-00]), reconfiguring
> > [    0.113496] pci 0000:02:00.0: scanning [bus 00-00] behind bridge, pass 1
> > [    0.114790] pci_bus 0000:03: scanning bus
> > [    0.114964] pci 0000:03:00.0: [1106:3483] type 00 class 0x0c0330
> > [    0.115247] pci 0000:03:00.0: reg 0x10: [mem 0x00000000-0x00000fff 64bit]
> > [    0.117139] pci 0000:03:00.0: PME# supported from D0 D1 D2 D3hot D3cold
> > [    0.117198] pci 0000:03:00.0: PME# disabled
> > [    0.130432] pci_bus 0000:03: fixups for bus
> > [    0.130441] pci_bus 0000:03: bus scan returning with max=03
> > [    0.130451] pci_bus 0000:03: busn_res: [bus 03-7f] end is updated to 03
> > [    0.130551] pci 0000:02:01.0: scanning [bus 00-00] behind bridge, pass 1
> > [    0.131022] pci_bus 0000:04: scanning bus
> > [    0.131155] pci 0000:04:00.0: [1002:677b] type 00 class 0x030000
> > [    0.132409] pci 0000:04:00.0: reg 0x10: [mem 0x00000000-0x0fffffff
> > 64bit pref]
> > [    0.132581] pci 0000:04:00.0: reg 0x18: [mem 0x00000000-0x0001ffff 64bit]
> > [    0.132681] pci 0000:04:00.0: reg 0x20: [io  0x0000-0x00ff]
> > [    0.132855] pci 0000:04:00.0: reg 0x30: [mem 0x00000000-0x0001ffff pref]
> > [    0.132968] pci 0000:04:00.0: enabling Extended Tags
> > [    0.134750] pci 0000:04:00.0: supports D1 D2
> > [    0.135109] pci 0000:04:00.0: 8.000 Gb/s available PCIe bandwidth,
> > limited by 2.5 GT/s x4 link at 0000:02:01.0 (capable of 32.000 Gb/s
> > with 2.5 GT/s x16 link)
> > [    0.135381] pci 0000:04:00.0: vgaarb: VGA device added:
> > decodes=io+mem,owns=none,locks=none
> > [    0.136308] pci 0000:04:00.1: [1002:aa98] type 00 class 0x040300
> > [    0.136630] pci 0000:04:00.1: reg 0x10: [mem 0x00000000-0x00003fff 64bit]
> > [    0.138228] pci 0000:04:00.1: enabling Extended Tags
> > [    0.138806] pci 0000:04:00.1: supports D1 D2
> > [    0.141489] pci_bus 0000:04: fixups for bus
> > [    0.141497] pci_bus 0000:04: bus scan returning with max=04
> > [    0.141507] pci_bus 0000:04: busn_res: [bus 04-7f] end is updated to 04
> > [    0.141606] pci 0000:02:02.0: scanning [bus 00-00] behind bridge, pass 1
> > [    0.142599] pci_bus 0000:05: scanning bus
> > [    0.143101] pci_bus 0000:05: fixups for bus
> > [    0.143108] pci_bus 0000:05: bus scan returning with max=05
> > [    0.143117] pci_bus 0000:05: busn_res: [bus 05-7f] end is updated to 05
> > [    0.143217] pci 0000:02:03.0: scanning [bus 00-00] behind bridge, pass 1
> > [    0.144234] pci_bus 0000:06: scanning bus
> > [    0.144383] pci 0000:06:00.0: [1b4b:9125] type 00 class 0x010601
> > [    0.144823] pci 0000:06:00.0: reg 0x10: [io  0x8000-0x8007]
> > [    0.144954] pci 0000:06:00.0: reg 0x14: [io  0x8040-0x8043]
> > [    0.145093] pci 0000:06:00.0: reg 0x18: [io  0x8100-0x8107]
> > [    0.145222] pci 0000:06:00.0: reg 0x1c: [io  0x8140-0x8143]
> > [    0.146140] pci 0000:06:00.0: reg 0x20: [io  0x800000-0x80000f]
> > [    0.146270] pci 0000:06:00.0: reg 0x24: [mem 0x00900000-0x009007ff]
> > [    0.146398] pci 0000:06:00.0: reg 0x30: [mem 0xd0000000-0xd000ffff pref]
> > [    0.148053] pci 0000:06:00.0: PME# supported from D3hot
> > [    0.148112] pci 0000:06:00.0: PME# disabled
> > [    0.150640] pci_bus 0000:06: fixups for bus
> > [    0.150649] pci_bus 0000:06: bus scan returning with max=06
> > [    0.150658] pci_bus 0000:06: busn_res: [bus 06-7f] end is updated to 06
> > [    0.150744] pci_bus 0000:02: bus scan returning with max=06
> > [    0.150753] pci_bus 0000:02: busn_res: [bus 02-7f] end is updated to 06
> > [    0.150844] pci_bus 0000:01: bus scan returning with max=06
> > [    0.150853] pci_bus 0000:01: busn_res: [bus 01-7f] end is updated to 06
> > [    0.150891] pci_bus 0000:00: bus scan returning with max=06
> > [    0.150905] pci 0000:02:00.0: bridge window [io  0x1000-0x0fff] to
> > [bus 03] add_size 1000
> > [    0.150968] pci 0000:02:00.0: bridge window [mem
> > 0x00100000-0x000fffff 64bit pref] to [bus 03] add_size 200000
> > add_align 100000
> > [    0.151032] pci 0000:02:00.0: bridge window [mem
> > 0x00100000-0x001fffff] to [bus 03] add_size 100000 add_align 100000
> > [    0.151098] pci 0000:02:01.0: bridge window [mem
> > 0x00100000-0x001fffff] to [bus 04] add_size 100000 add_align 100000
> > [    0.151159] pci 0000:02:02.0: bridge window [io  0x1000-0x0fff] to
> > [bus 05] add_size 1000
> > [    0.151221] pci 0000:02:02.0: bridge window [mem
> > 0x00100000-0x000fffff 64bit pref] to [bus 05] add_size 200000
> > add_align 100000
> > [    0.151283] pci 0000:02:02.0: bridge window [mem
> > 0x00100000-0x000fffff] to [bus 05] add_size 200000 add_align 100000
> > [    0.151348] pci 0000:02:03.0: bridge window [mem
> > 0x00100000-0x000fffff 64bit pref] to [bus 06] add_size 200000
> > add_align 100000
> > [    0.151412] pci 0000:02:03.0: bridge window [mem
> > 0x00100000-0x001fffff] to [bus 06] add_size 100000 add_align 100000
> > [    0.151475] pci 0000:01:00.0: bridge window [io  0x1000-0x2fff] to
> > [bus 02-06] add_size 2000
> > [    0.151541] pci 0000:01:00.0: bridge window [mem
> > 0x00100000-0x004fffff] to [bus 02-06] add_size 500000 add_align 100000
> > [    0.151603] pci 0000:00:00.0: bridge window [io  0x1000-0x2fff] to
> > [bus 01-06] add_size 2000
> > [    0.151666] pci 0000:00:00.0: bridge window [mem
> > 0x00100000-0x004fffff] to [bus 01-06] add_size 500000 add_align 100000
> > [    0.151736] pci 0000:00:00.0: BAR 0: no space for [mem size
> > 0x80000000 64bit pref]
> > [    0.151794] pci 0000:00:00.0: BAR 0: failed to assign [mem size
> > 0x80000000 64bit pref]
> > [    0.151855] pci 0000:00:00.0: BAR 9: assigned [mem
> > 0x40000000-0x57ffffff 64bit pref]
> > [    0.151913] pci 0000:00:00.0: BAR 8: assigned [mem 0x58000000-0x588fffff]
> > [    0.151949] pci 0000:00:00.0: BAR 7: no space for [io  size 0x4000]
> > [    0.151985] pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x4000]
> > [    0.152026] pci 0000:00:00.0: BAR 0: no space for [mem size
> > 0x80000000 64bit pref]
> > [    0.152083] pci 0000:00:00.0: BAR 0: failed to assign [mem size
> > 0x80000000 64bit pref]
> > [    0.152142] pci 0000:00:00.0: BAR 9: assigned [mem
> > 0x40000000-0x57ffffff 64bit pref]
> > [    0.152200] pci 0000:00:00.0: BAR 8: assigned [mem 0x58000000-0x583fffff]
> > [    0.152237] pci 0000:00:00.0: BAR 7: no space for [io  size 0x2000]
> > [    0.152272] pci 0000:00:00.0: BAR 7: failed to assign [io  size 0x2000]
> > [    0.152311] pci 0000:00:00.0: BAR 8: reassigned [mem
> > 0x58000000-0x588fffff] (expanded by 0x500000)
> > [    0.152375] pci 0000:01:00.0: BAR 9: assigned [mem
> > 0x40000000-0x57ffffff 64bit pref]
> > [    0.152433] pci 0000:01:00.0: BAR 8: assigned [mem 0x58000000-0x588fffff]
> > [    0.152469] pci 0000:01:00.0: BAR 7: no space for [io  size 0x4000]
> > [    0.152505] pci 0000:01:00.0: BAR 7: failed to assign [io  size 0x4000]
> > [    0.152543] pci 0000:01:00.0: BAR 7: no space for [io  size 0x2000]
> > [    0.152578] pci 0000:01:00.0: BAR 7: failed to assign [io  size 0x2000]
> > [    0.152638] pci 0000:02:01.0: BAR 9: assigned [mem
> > 0x40000000-0x4fffffff 64bit pref]
> > [    0.152697] pci 0000:02:00.0: BAR 8: assigned [mem 0x58000000-0x581fffff]
> > [    0.152735] pci 0000:02:00.0: BAR 9: assigned [mem
> > 0x50000000-0x501fffff 64bit pref]
> > [    0.152793] pci 0000:02:01.0: BAR 8: assigned [mem 0x58200000-0x583fffff]
> > [    0.152830] pci 0000:02:02.0: BAR 8: assigned [mem 0x58400000-0x585fffff]
> > [    0.152867] pci 0000:02:02.0: BAR 9: assigned [mem
> > 0x50200000-0x503fffff 64bit pref]
> > [    0.152925] pci 0000:02:03.0: BAR 8: assigned [mem 0x58600000-0x587fffff]
> > [    0.152963] pci 0000:02:03.0: BAR 9: assigned [mem
> > 0x50400000-0x505fffff 64bit pref]
> > [    0.153020] pci 0000:02:00.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153056] pci 0000:02:00.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153092] pci 0000:02:01.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153128] pci 0000:02:01.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153164] pci 0000:02:02.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153199] pci 0000:02:02.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153235] pci 0000:02:03.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153270] pci 0000:02:03.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153315] pci 0000:02:01.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153350] pci 0000:02:01.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153386] pci 0000:02:03.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153422] pci 0000:02:03.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153458] pci 0000:02:02.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153493] pci 0000:02:02.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153530] pci 0000:02:00.0: BAR 7: no space for [io  size 0x1000]
> > [    0.153565] pci 0000:02:00.0: BAR 7: failed to assign [io  size 0x1000]
> > [    0.153606] pci 0000:03:00.0: BAR 0: assigned [mem
> > 0x58000000-0x58000fff 64bit]
> > [    0.153766] pci 0000:02:00.0: PCI bridge to [bus 03]
> > [    0.153852] pci 0000:02:00.0:   bridge window [mem 0x58000000-0x581fffff]
> > [    0.153967] pci 0000:02:00.0:   bridge window [mem
> > 0x50000000-0x501fffff 64bit pref]
> > [    0.154163] pci 0000:04:00.0: BAR 0: assigned [mem
> > 0x40000000-0x4fffffff 64bit pref]
> > [    0.154327] pci 0000:04:00.0: BAR 2: assigned [mem
> > 0x58200000-0x5821ffff 64bit]
> > [    0.154653] pci 0000:04:00.0: BAR 6: assigned [mem
> > 0x58220000-0x5823ffff pref]
> > [    0.154712] pci 0000:04:00.1: BAR 0: assigned [mem
> > 0x58240000-0x58243fff 64bit]
> > [    0.154861] pci 0000:04:00.0: BAR 4: no space for [io  size 0x0100]
> > [    0.154896] pci 0000:04:00.0: BAR 4: failed to assign [io  size 0x0100]
> > [    0.154933] pci 0000:02:01.0: PCI bridge to [bus 04]
> > [    0.155016] pci 0000:02:01.0:   bridge window [mem 0x58200000-0x583fffff]
> > [    0.155131] pci 0000:02:01.0:   bridge window [mem
> > 0x40000000-0x4fffffff 64bit pref]
> > [    0.155333] pci 0000:02:02.0: PCI bridge to [bus 05]
> > [    0.155418] pci 0000:02:02.0:   bridge window [mem 0x58400000-0x585fffff]
> > [    0.155532] pci 0000:02:02.0:   bridge window [mem
> > 0x50200000-0x503fffff 64bit pref]
> > [    0.155726] pci 0000:06:00.0: BAR 6: assigned [mem
> > 0x58600000-0x5860ffff pref]
> > [    0.155784] pci 0000:06:00.0: BAR 5: assigned [mem 0x58610000-0x586107ff]
> > [    0.155847] pci 0000:06:00.0: BAR 4: no space for [io  size 0x0010]
> > [    0.155883] pci 0000:06:00.0: BAR 4: failed to assign [io  size 0x0010]
> > [    0.155919] pci 0000:06:00.0: BAR 0: no space for [io  size 0x0008]
> > [    0.155954] pci 0000:06:00.0: BAR 0: failed to assign [io  size 0x0008]
> > [    0.155990] pci 0000:06:00.0: BAR 2: no space for [io  size 0x0008]
> > [    0.156025] pci 0000:06:00.0: BAR 2: failed to assign [io  size 0x0008]
> > [    0.156061] pci 0000:06:00.0: BAR 1: no space for [io  size 0x0004]
> > [    0.156096] pci 0000:06:00.0: BAR 1: failed to assign [io  size 0x0004]
> > [    0.156132] pci 0000:06:00.0: BAR 3: no space for [io  size 0x0004]
> > [    0.156167] pci 0000:06:00.0: BAR 3: failed to assign [io  size 0x0004]
> > [    0.156203] pci 0000:02:03.0: PCI bridge to [bus 06]
> > [    0.156284] pci 0000:02:03.0:   bridge window [mem 0x58600000-0x587fffff]
> > [    0.156402] pci 0000:02:03.0:   bridge window [mem
> > 0x50400000-0x505fffff 64bit pref]
> > [    0.156594] pci 0000:01:00.0: PCI bridge to [bus 02-06]
> > [    0.156671] pci 0000:01:00.0:   bridge window [mem 0x58000000-0x588fffff]
> > [    0.156796] pci 0000:01:00.0:   bridge window [mem
> > 0x40000000-0x57ffffff 64bit pref]
> > [    0.157000] pci 0000:00:00.0: PCI bridge to [bus 01-06]
> > [    0.157038] pci 0000:00:00.0:   bridge window [mem 0x58000000-0x588fffff]
> > [    0.157075] pci 0000:00:00.0:   bridge window [mem
> > 0x40000000-0x57ffffff 64bit pref]
> > [    0.157169] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    0.157208] pcieport 0000:00:00.0: device is not dma coherent
> > [    0.157242] pcieport 0000:00:00.0: device is not behind an iommu
> > [    0.157339] pcieport 0000:00:00.0: assign IRQ: got 8
> > [    0.157354] pcieport 0000:00:00.0: enabling device (0000 -> 0002)
> > [    0.157403] pcieport 0000:00:00.0: enabling bus mastering
> > [    0.157866] pcieport 0000:00:00.0: AER: enabled with IRQ 9
> > [    0.158050] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    0.158091] pcieport 0000:01:00.0: device is not dma coherent
> > [    0.158125] pcieport 0000:01:00.0: device is not behind an iommu
> > [    0.158178] pcieport 0000:01:00.0: assign IRQ: got 0
> > [    0.158224] pcieport 0000:01:00.0: enabling device (0000 -> 0002)
> > [    0.158431] pcieport 0000:01:00.0: enabling bus mastering
> > [    0.160263] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    0.160304] pcieport 0000:02:00.0: device is not dma coherent
> > [    0.160338] pcieport 0000:02:00.0: device is not behind an iommu
> > [    0.160405] pcieport 0000:02:00.0: assign IRQ: got 0
> > [    0.160453] pcieport 0000:02:00.0: enabling device (0000 -> 0002)
> > [    0.160754] pcieport 0000:02:00.0: enabling bus mastering
> > [    0.163911] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    0.163952] pcieport 0000:02:01.0: device is not dma coherent
> > [    0.163986] pcieport 0000:02:01.0: device is not behind an iommu
> > [    0.164039] pcieport 0000:02:01.0: assign IRQ: got 0
> > [    0.164088] pcieport 0000:02:01.0: enabling device (0000 -> 0002)
> > [    0.164371] pcieport 0000:02:01.0: enabling bus mastering
> > [    0.166345] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    0.166386] pcieport 0000:02:02.0: device is not dma coherent
> > [    0.166420] pcieport 0000:02:02.0: device is not behind an iommu
> > [    0.166473] pcieport 0000:02:02.0: assign IRQ: got 0
> > [    0.166534] pcieport 0000:02:02.0: enabling device (0000 -> 0002)
> > [    0.167751] pcieport 0000:02:02.0: enabling bus mastering
> > [    0.169982] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    0.170024] pcieport 0000:02:03.0: device is not dma coherent
> > [    0.170058] pcieport 0000:02:03.0: device is not behind an iommu
> > [    0.170113] pcieport 0000:02:03.0: assign IRQ: got 0
> > [    0.170161] pcieport 0000:02:03.0: enabling device (0000 -> 0002)
> > [    0.170446] pcieport 0000:02:03.0: enabling bus mastering
> > [    0.173626] pci 0000:03:00.0: enabling device (0000 -> 0002)
> >
> > ...
> >
> > [    4.342236] OF: no dma-ranges found for node(/soc/pcie@2030000000)
> > [    4.348329] xhci_hcd 0000:03:00.0: device is not dma coherent
> > [    4.354058] xhci_hcd 0000:03:00.0: device is not behind an iommu
> > [    4.360090] xhci_hcd 0000:03:00.0: assign IRQ: got 0
> > [    4.360227] xhci_hcd 0000:03:00.0: enabling bus mastering
> > [    4.360248] xhci_hcd 0000:03:00.0: xHCI Host Controller
> > [    4.365281] xhci_hcd 0000:03:00.0: new USB bus registered, assigned
> > bus number 1
> > [    4.373282] xhci_hcd 0000:03:00.0: hcc params 0x002841eb hci
> > version 0x100 quirks 0x0000000000000090
> > [    4.381811] xhci_hcd 0000:03:00.0: enabling Mem-Wr-Inval
> > [    4.382614] hub 1-0:1.0: USB hub found
> > [    4.385637] hub 1-0:1.0: 1 port detected
> > [    4.393190] xhci_hcd 0000:03:00.0: xHCI Host Controller
> > [    4.398137] xhci_hcd 0000:03:00.0: new USB bus registered, assigned
> > bus number 2
> > [    4.405507] xhci_hcd 0000:03:00.0: Host supports USB 3.0 SuperSpeed
> > [    4.411777] xhci_hcd 0000:03:00.0: WARNING: Host System Error
> > [    4.417527] usb usb2: We don't know the algorithms for LPM for this
> > host, disabling LPM.
> > [    4.425983] hub 2-0:1.0: USB hub found
> > [    4.429311] hub 2-0:1.0: 4 ports detected
> > ...
> >
> > Alistair
> >
> >
> >
> >>
> >> Robin.
> >>
> >>> drivers/of/device.c | 4 +---
> >>>    1 file changed, 1 insertion(+), 3 deletions(-)
> >>>
> >>> diff --git a/drivers/of/device.c b/drivers/of/device.c
> >>> index 3717f2a20d0d..8299f8055da7 100644
> >>> --- a/drivers/of/device.c
> >>> +++ b/drivers/of/device.c
> >>> @@ -149,11 +149,9 @@ int of_dma_configure(struct device *dev, struct device_node *np, bool force_dma)
> >>>         * set by the driver.
> >>>         */
> >>>        mask = DMA_BIT_MASK(ilog2(dma_addr + size - 1) + 1);
> >>> +     dev->bus_dma_mask = mask;
> >>>        dev->coherent_dma_mask &= mask;
> >>>        *dev->dma_mask &= mask;
> >>> -     /* ...but only set bus mask if we found valid dma-ranges earlier */
> >>> -     if (!ret)
> >>> -             dev->bus_dma_mask = mask;
> >>>
> >>>        coherent = of_dma_is_coherent(np);
> >>>        dev_dbg(dev, "device is%sdma coherent\n",
> >>>

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
