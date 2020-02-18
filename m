Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C91A21627CD
	for <lists+linux-riscv@lfdr.de>; Tue, 18 Feb 2020 15:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FFBOw4M04YeY1NkfFb5EAxQ65On7OidfGq9wGLho7Go=; b=cECrDh6CZWlxq/v5tFYz93OZ1
	TCbaQNdsQKrl6et5g+umqn4rDE7javmyQuemO8Y5PIO3gG5DOsgBiZVWhhDG2aHgNmcSddbIh2vC4
	UQPXOzwAOPDX8eKGQHu88QyOBQ6RAzZr77hPfx4pCm8Z0VMus3zZZxXeCWa+cOEJNs3qW9GdgHInB
	kBvj89/aiOigapvlNb+tKQhPQpkMjRftX83G/1NZXzf2kxn0rKrGVzO5fNf59UMYaB+uzWDbrt8Jb
	px57aJqRTB/uIe/i9LT6SVTDWTPXmswVwBs04eCGOP0d/15kUS+WIFOb2n2iWwJXBf0u7Sw8uCpzp
	1gBSyfQBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43c1-00072k-M5; Tue, 18 Feb 2020 14:12:33 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43bx-00072B-Gz
 for linux-riscv@lists.infradead.org; Tue, 18 Feb 2020 14:12:31 +0000
Received: by mail-oi1-x242.google.com with SMTP id z2so20193131oih.6
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 06:12:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FFBOw4M04YeY1NkfFb5EAxQ65On7OidfGq9wGLho7Go=;
 b=sJ1WiXLsKF1aoU5Ku0ySp4y9D7Se7BPWVrg6DY6V87SfnpKx7SKQF7KXNLZy+4hbkc
 64+eyCZQMxcNH1C8QuPKrRaGPil2Gc0hi2nWBEFVf1LJHHOfJgb/tjzNWRU+r6Vzgcbi
 AO6Hrabmq45QpxOGC9m7o5QPoIKefGrymDQ9Nxjm2OZtDdK7teMCCL8AR59+3rAWY2yz
 QqrwSkrYDUbQ5dD6Fvu9Y8HHN95+xAy8b6iMzRZv/lsrTTlYEjPnvQHyghiJPGQRW++X
 5dw4PxQom5BKf2sa6OJZ60HA/wSt5zwh2an1LD7/W/p1f4uEk3xlYx2zcO5F5Xispwbq
 3vOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FFBOw4M04YeY1NkfFb5EAxQ65On7OidfGq9wGLho7Go=;
 b=SfTCBDWDi2ISb7bFKcCDGc6ak8S3C0hHqlrLer7nF+M4tTPY7u7AqZ7isIibdjIIcz
 WsOrLN/snxirIMlPcQLTveE4Hu3Jueec6SBSN/jp+f+Cl4TKMpTYl98w10c5ty6lOq0E
 b80GhFt3umLFrWwtJOT44Q07TANhiIgjzHOvCtYmBn9GlXAOO4rOjlTYGxqsuCKrkcy/
 yvSu+ner/ebKCucxovIzIpxDi8E1X0z0Byvb/Ocn87HYKHmOGCMMIBpDaGJr3a5PYmbz
 ZpTuLYFuRz6j0JnHuq7egipLc+IAs4Ns6olGdJX9d2icHxqu7/LJdQwpOLzV5i5V5nkl
 OxCg==
X-Gm-Message-State: APjAAAVxzorWJDv9EOGeebNDXnJGd2wTHtUhnm8t1kix7UJaONf2Ln22
 urXxqoLEQlmOBWPV5FoS9nNxWgt57A4Eqg==
X-Google-Smtp-Source: APXvYqxQ0sdXPSnQamRaIcFljm0wEmJTWFUkQVbyinTFpcbztQqKgXNMji3HLUyyfZCC8jovisgYRw==
X-Received: by 2002:aca:f487:: with SMTP id s129mr1362064oih.75.1582035147478; 
 Tue, 18 Feb 2020 06:12:27 -0800 (PST)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com.
 [209.85.210.45])
 by smtp.gmail.com with ESMTPSA id a30sm1369424otc.79.2020.02.18.06.12.26
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 18 Feb 2020 06:12:26 -0800 (PST)
Received: by mail-ot1-f45.google.com with SMTP id p8so19560733oth.10
 for <linux-riscv@lists.infradead.org>; Tue, 18 Feb 2020 06:12:26 -0800 (PST)
X-Received: by 2002:a9d:5c0c:: with SMTP id o12mr1093275otk.145.1582035145790; 
 Tue, 18 Feb 2020 06:12:25 -0800 (PST)
MIME-Version: 1.0
References: <20200212103432.660256-1-damien.lemoal@wdc.com>
 <20200212103432.660256-9-damien.lemoal@wdc.com>
 <48e10b3d-12f3-a65c-8017-99c780c63040@gmail.com>
 <BYAPR04MB581671F46D3FE67FD3C8B2B7E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
 <bd74c841-2447-2f11-f924-a501230b3927@gmail.com>
 <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
In-Reply-To: <BYAPR04MB5816ED294439828E562EB085E7140@BYAPR04MB5816.namprd04.prod.outlook.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Tue, 18 Feb 2020 11:12:14 -0300
X-Gmail-Original-Message-ID: <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
Message-ID: <CADnnUqe3AbTStJg9LS4qupH-OnBDGjuEFbnX8EXW8MUr4kwoGQ@mail.gmail.com>
Subject: Re: [PATCH 08/10] riscv: Add Kendryte K210 device tree
To: Damien Le Moal <Damien.LeMoal@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_061229_709568_BD1C8690 
X-CRM114-Status: GOOD (  39.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: orionwl@x0f.org, Anup Patel <Anup.Patel@wdc.com>,
 Sean Anderson <seanga2@gmail.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Feb 15, 2020 at 12:00 AM Damien Le Moal <Damien.LeMoal@wdc.com> wrote:
>
> On 2020/02/15 11:48, Sean Anderson wrote:
> >>>> +          cpu0: cpu@0 {
> >>>> +                  device_type = "cpu";
> >>>> +                  reg = <0>;
> >>>> +                  compatible = "riscv";
> >>>> +                  riscv,isa = "rv64imafdc";
> >>>> +                  mmu-type = "none";
> >>>
> >>> This should be "sv36".
> >>
> >> If we want to run the MMU, yes. For a nommu kernel, I would rather stick
> >> with "none". Not that it really matters since the nommu kernel will not
> >> look at this entry anyway. No strong opinion either way in the end.
> >> I have not checked the specs yet, but does sv36 necessarily implies older
> >> specs 1.9 too ? If not, then we may want something else in there for this
> >> soc special case.
> >
> > Ah, this should be "sv39", sorry. Ideally we would put something like
> > the priv spec version in the isa string, or perhaps as a separate
> > property. From reading the dt docs, it seems like one should try to
> > describe the hardware as best as possible to allow for
> > foward-compatibility.
>
> OK. But I guess we can keep the "none" here until we get to work on the MMU
> support. That definitely sounds safer to me considering the specs difference.
>
> >>>> +                  d-cache-size = <0x8000>;
> >>>> +                  d-cache-block-size = <64>; /* bogus */
> >>>> +                  clocks = <&sysctl 0>;
> >>>
> >>> This is correct only by coincidence. The clock structure is
> >>>
> >>> in0 -> pll0 -> aclk -> cpu
> >>>
> >>> aclk divides by two by default, so it runs at 390 MHz, which is also
> >>> what you set pll1 to. However, if someone else (such as the bootloader)
> >>> changes the pll0 frequency then this will be completely off.
> >>
> >> Yes... The clock management needs more work as mentioned in the cover
> >> letter. All of this works for now with direct m-mode boot (no boot loader)
> >> and relies on the hardware defaults which are coded here. The sysctl driver
> >> also relies on those defaults. A more solid implementation will need the
> >> soc_early_init() code to discover and set things up correctly.
> >>
> >> As mentioned in the cover letter, this is all a base. It works, but
> >> definitely is not complete.
> >
> > At the very least, I would different identifiers for each clock. That
> > way you can ignore them now and add support later. There isn't a
> > "natural" ordering (since the clocks are in a different order in every
> > register), so I am using this arbitrary numbering scheme [1].
> >
> > [1] https://github.com/Forty-Bot/u-boot/blob/maix_v6/include/dt-bindings/clock/k210-sysctl.h
>
> Good idea. I had a look at this when I used your device tree but decided on
> not using it for simplicity since using the default HW setup led to that
> single clock 0. But this is a good point. I will use the identifiers and
> for now have all the IDs used defined to "0". As the sysctl driver is
> changed and improved, the DT can remain the same and more devices added easily.
>
> >>>> +          ranges;
> >>>> +          interrupt-parent = <&plic0>;
> >>>> +
> >>>> +          sysctl: sysctl@50440000 {
> >>>> +                  compatible = "kendryte,k210-sysctl", "syscon";
> >>>> +                  reg = <0x50440000 0x1000>;
> >>>> +                  #clock-cells = <1>;
> >>>> +          };
> >>>
> >>> Would it be possible to model this as an MFD? There are a lot of
> >>> different registers in here, many of which are unrelated to clocks. For
> >>> example, there are also reset registers, a reboot register, and DMA
> >>> handshake controls. I think modeling this as a clock controller only
> >>> does not correctly reflect the hardware, and will be awkward in the
> >>> future.
> >>
> >> Absolutely. It is far from complete. And seeing your complete device tree,
> >> there are likely a lot of peripherals for which Linux already has drivers
> >> and that could be used if the clocks/sysctl are improved. As mentioned in
> >> the cover letter, this is left as an exercise for interested people :)
> >> Note that I am indeed interested in working on this a little more. I simply
> >> lack the time to do it :)
> >
> > My next project after u-boot support was going to be Linux, so I can
> > lend a hand after I get everything merged on that end.
>
> That would be great !
>
> >>>> +          plic0: interrupt-controller@c000000 {
> >>>> +                  #interrupt-cells = <1>;
> >>>> +                  interrupt-controller;
> >>>> +                  compatible = "kendryte,k210-plic0", "riscv,plic0";
> >>>> +                  reg = <0xC000000 0x3FFF008>;
> >>>
> >>> With regard to the size of registers, I had the following exchange on
> >>> the U-Boot mailing list.
> >>>
> >>> On Tue, Feb 4, 2020 at 10:23 PM Sean Anderson <seanga2@gmail.com> wrote:
> >>>>
> >>>> On 2/4/20 6:32 AM, Bin Meng wrote:
> >>>>> Hi Sean,
> >>>>>
> >>>>> On Mon, Feb 3, 2020 at 4:10 AM Sean Anderson <seanga2@gmail.com> wrote:
> >>>>>> Should the size of a reg be the size of the documented registers, or the size
> >>>>>> of the address space which will be routed to that device?
> >>>>>
> >>>>> Perhaps we need use the size of the address space routed to that
> >>>>> device, in case there is some undocumented registers we need handle.
> >>>>
> >>>> Ok, I'll go with the whole address space then.
> >>>
> >>> You may want to make similar changes for Linux; I didn't see any
> >>> documentation about what the preferred size was.
> >>
> >> I wondered about it too. Not really sure what to do about it.
> >
> > The sizes in my device tree are based on reading device memory and
> > seeing where it repeats. For example, the memory at 50210000 and
> > 50210100 is the same, so I set the uart1 reg to <50210000 0x100>.
>
> OK. Will make changes and retest.
>
> >
> >>>> +                  interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 0xffffffff>,
> >>>> +                                        <&cpu1_intc 11>, <&cpu1_intc 0xffffffff>;
> >>>> +                  riscv,ndev = <65>;
> >>>> +                  riscv,max-priority = <0x07>;
> >>>> +          };
> >>>> +
> >>>> +          uarths0: serial@38000000 {
> >>>> +                  compatible = "kendryte,k210-uart0", "sifive,uart0";
> >>>
> >>> I would change the first compatible string to "kendryte,k210-uarths",
> >>> since that is how this uart is described in their documentation.
> >>
> >> OK. It makes sense.
> >>
> >>>
> >>>> +                  reg = <0x38000000 0x20>;
> >>>
> >>> Same thing as the size comments above.
> >>>
> >>>> +                  interrupts = <33>;
> >>>> +                  clocks = <&sysctl 0>;
> >>>
> >>> Same clock comments.
> >>>
> >>>> +          };
> >>>> +  };
> >>>> +};
> >>>>
> >>>
> >>> --Sean
> >>>
> >>
> >>
> >
> >
>
>
> --
> Damien Le Moal
> Western Digital Research
>

Maybe it's a known thing but I found an MMU implementation here:
https://gist.github.com/44670/0d8c152df7c5b59d17d469aba4dda0e5

Comes from as fork of the sdk here https://github.com/44670/libk9
implementing also the LCD and other peripheral support.

Might help out adding support to it.

-- 
________________________________________
Carlos Eduardo de Paula
me@carlosedp.com
http://carlosedp.com
http://twitter.com/carlosedp
Linkedin
________________________________________

