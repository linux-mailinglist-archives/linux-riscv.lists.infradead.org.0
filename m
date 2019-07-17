Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47B5E6B8EA
	for <lists+linux-riscv@lfdr.de>; Wed, 17 Jul 2019 11:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ay8tWqkCx1LxcwoHbBsLUUtlF+qJaV95HLooC/mJIP4=; b=n3wcZNAr74kGs8
	0sl7cbKOfVk1Rwjne7cH4jpWq99KpmM4lfd2gTH2cea34FN3CO6Ty1F/7L+1N3AgkyUzK63TLzJP+
	WBZ9T9ZKXHlx7qkj4qKou7hXVJDWrA6C+3HbVTK53rNosMUAd66RMvIuArGqQwsgvD+UG9i5fGS6p
	bhdrZs1yfMWTsCuXUG704QNize+pRGWKUeng8jreUPzBCT8FeiZ+Y5b1Mu6EFivsVedqR4STNY5zZ
	Xor+30vr3WaY10A1kGux/zPWT2xj5ydX/T1/TNzuBoDlKDYDwfss2zlorn4Ei0HLU4UcFrO3mfgvT
	0IqdzGEnBigD58zWbgZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnfv7-00076q-K5; Wed, 17 Jul 2019 09:08:17 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnfv1-00075X-Lp
 for linux-riscv@lists.infradead.org; Wed, 17 Jul 2019 09:08:13 +0000
Received: by mail-lf1-x143.google.com with SMTP id c9so15846217lfh.4
 for <linux-riscv@lists.infradead.org>; Wed, 17 Jul 2019 02:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=k7UdXNTU/Lcm5T+73Mu9Lk3fJTqZdL2ygB2hxg/bvs0=;
 b=ARPF8ysRS2qme660bnfPo9Sf6dUPUtYkSPR39gw+zuIoL7NZtNifRCF1SXDGFunevB
 uB8IuWYM1iKac8uIBfwlUQMiC8nlsO8DxhVUztZfWDxGTVv0AP3VA2gNewP/19w1a1LW
 +DLcKtE6254Ku0JHNY1kGsvrzSV9XAaFc8P93ruj/1XfqkiXTeiLARokVfXAhvHNhUAp
 oU/deRwXfo0vLuXt+HfYNfQX609LSRr1XRlJKA2ojTpGANWQaz3QzdMP8uvHrMD7iW8j
 FKIENDnCF1zDqRZvKhZ/RJljDTl2EmbDSDS67+xcSz06fthg9HXQPPGsqQ0bzxxY3PqD
 Ki/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k7UdXNTU/Lcm5T+73Mu9Lk3fJTqZdL2ygB2hxg/bvs0=;
 b=qhAiijedVeqHzKAk2Z1hxXiu856O1ccoKUMHpG5ByAim8TABW5obEuylXlSGsiaRrC
 bBFVVYew5VZNUkVdxLwLHYNONveWcRXtJbo2fbSFv27HTwQGRTNgV4KRv9VW8QJl7kNR
 w21BEquk4iVqz5YsFwRkxMjFlmrC3HzqSi58HsZUCBMLNrGv2akAAHehtJ1pMzwRwWGJ
 4zI2acP6Ypo0xQE3GWMOvmgvT7fnKCG72zOiX2fgm3LtUloLO1ULRnyzvUudJwRLfeOs
 ijzQTSwmw/DeQFHGJJp8RpmtC36vYyXlqfIthLXQylZG0YC58rYTKpFyDgHaL9za3sdb
 mvUA==
X-Gm-Message-State: APjAAAWzcl56LnyU7WMue0KNk4RPjip7bhKw/Dq3csm5UV1ELaI8x+ee
 aaBg+rtoV4FnkBdKovTnOSVZkruhA+AiDX30nHM5yQ==
X-Google-Smtp-Source: APXvYqyUa5Y6gp/AOOmOhWXG0woHIHFHQ/pw+MgFTpkHnca8dVBQpSXO7UwrMm763Jwm92ZWv/5Cb/402QneMPo+DUs=
X-Received: by 2002:ac2:4644:: with SMTP id s4mr17067571lfo.158.1563354489475; 
 Wed, 17 Jul 2019 02:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-2-git-send-email-yash.shah@sifive.com>
 <CAL_Jsq+p5PnTDgxuh9_Aw1RvTk4aTYjKxyMq7DPczLzQVv8_ew@mail.gmail.com>
 <b0c60ec9-2f57-c3f5-c3b4-ee83a5ec4c45@microchip.com>
In-Reply-To: <b0c60ec9-2f57-c3f5-c3b4-ee83a5ec4c45@microchip.com>
From: Yash Shah <yash.shah@sifive.com>
Date: Wed, 17 Jul 2019 14:37:33 +0530
Message-ID: <CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com>
Subject: Re: [PATCH 1/2] net/macb: bindings doc: add sifive fu540-c000 binding
To: Nicolas Ferre <Nicolas.Ferre@microchip.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_020811_743941_151A7A58 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, netdev <netdev@vger.kernel.org>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Sachin Ghadi <sachin.ghadi@sifive.com>, Rob Herring <robh+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>, linux-riscv@lists.infradead.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 9:08 PM <Nicolas.Ferre@microchip.com> wrote:
>
> On 23/05/2019 at 22:50, Rob Herring wrote:
> > On Thu, May 23, 2019 at 6:46 AM Yash Shah <yash.shah@sifive.com> wrote:
> >>
> >> Add the compatibility string documentation for SiFive FU540-C0000
> >> interface.
> >> On the FU540, this driver also needs to read and write registers in a
> >> management IP block that monitors or drives boundary signals for the
> >> GEMGXL IP block that are not directly mapped to GEMGXL registers.
> >> Therefore, add additional range to "reg" property for SiFive GEMGXL
> >> management IP registers.
> >>
> >> Signed-off-by: Yash Shah <yash.shah@sifive.com>
> >> ---
> >>   Documentation/devicetree/bindings/net/macb.txt | 3 +++
> >>   1 file changed, 3 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/net/macb.txt b/Documentation/devicetree/bindings/net/macb.txt
> >> index 9c5e944..91a2a66 100644
> >> --- a/Documentation/devicetree/bindings/net/macb.txt
> >> +++ b/Documentation/devicetree/bindings/net/macb.txt
> >> @@ -4,6 +4,7 @@ Required properties:
> >>   - compatible: Should be "cdns,[<chip>-]{macb|gem}"
> >>     Use "cdns,at91rm9200-emac" Atmel at91rm9200 SoC.
> >>     Use "cdns,at91sam9260-macb" for Atmel at91sam9 SoCs.
> >> +  Use "cdns,fu540-macb" for SiFive FU540-C000 SoC.
> >
> > This pattern that Atmel started isn't really correct. The vendor
> > prefix here should be sifive. 'cdns' would be appropriate for a
> > fallback.
>
> Ok, we missed this for the sam9x60 SoC that we added recently then.
>
> Anyway a little too late, coming back to this machine, and talking to
> Yash, isn't "sifive,fu540-c000-macb" more specific and a better match
> for being future proof? I would advice for the most specific possible
> with other compatible strings on the same line in the DT, like:
>
> "sifive,fu540-c000-macb", "sifive,fu540-macb"
>

Yes, I agree that "sifive,fu540-c000-macb" is a better match.

> Moreover, is it really a "macb" or a "gem" type of interface from
> Cadence? Not a big deal, but just to discuss the topic to the bone...

I believe it should be "gem". I will plan to submit the patch for
these changes. Thanks for pointing it out.

- Yash

>
> Note that I'm fine if you consider that what you have in net-next new is
> correct.
>
> Regards,
>    Nicolas
>
> >>     Use "cdns,sam9x60-macb" for Microchip sam9x60 SoC.
> >>     Use "cdns,np4-macb" for NP4 SoC devices.
> >>     Use "cdns,at32ap7000-macb" for other 10/100 usage or use the generic form: "cdns,macb".
> >> @@ -17,6 +18,8 @@ Required properties:
> >>     Use "cdns,zynqmp-gem" for Zynq Ultrascale+ MPSoC.
> >>     Or the generic form: "cdns,emac".
> >>   - reg: Address and length of the register set for the device
> >> +       For "cdns,fu540-macb", second range is required to specify the
> >> +       address and length of the registers for GEMGXL Management block.
> >>   - interrupts: Should contain macb interrupt
> >>   - phy-mode: See ethernet.txt file in the same directory.
> >>   - clock-names: Tuple listing input clock names.
> >> --
> >> 1.9.1
> >>
> >
>
>
> --
> Nicolas Ferre

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
