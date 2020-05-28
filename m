Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 144C11E7066
	for <lists+linux-riscv@lfdr.de>; Fri, 29 May 2020 01:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kHt1I46lXnPM8uSEpy3eA9oH3DddGg6oQn9ZXscyMuY=; b=B3frR2JD9fIf4bAzdqDaveNz3
	M8rnkWwwE5P9HIL73v8N5SqZYjOarwHhPjgW0UVieRpuWSvCKDby8kZbzjhD7oI4GfKqsXXQvpcJf
	IdTJl1HJA1IPrNFRjEarhfbVLAzhjltPAfum30LEeK4R4nrRRmQY5SDB4G5TTVEzFNEFA3kU7XxzU
	kYsc6JgGhCmv1I/CXYnoFwGQF0bdqwWWlNSnTVVhGjAdmK/Jtdz3MbgG0lk95LVyUDZmlNM13M54j
	UFBJsS1gpYkyQ485Mb+CGlFF7WWAgRSYiUDoGP2hD1ujLzDfHK22/6UYhE0p/Js8dEihnVkljG5pu
	CPXmMiOUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeRts-0001yc-2d; Thu, 28 May 2020 23:25:24 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeRmo-0007Y7-Vc
 for linux-riscv@lists.infradead.org; Thu, 28 May 2020 23:18:09 +0000
Received: by mail-il1-f193.google.com with SMTP id a14so718516ilk.2
 for <linux-riscv@lists.infradead.org>; Thu, 28 May 2020 16:18:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=kHt1I46lXnPM8uSEpy3eA9oH3DddGg6oQn9ZXscyMuY=;
 b=d2Xro4dBU6Lcrmsdc1ZvOVZ9h4oAgJ81lDutJriGf8LUO5U2RHyAx+X6KrCtRX21Ot
 ByeY/AAHE80qaoUV+9OXTCGveVSfN3UJpLvAMTzM0PncHJmLvmnommZdxvKAixFo+JFM
 efMjapv17gz8YZXlGAnZtO7CaeeKc59eaDzlmQkBm1Yh9aiV6bUGeOYMlR6y5YcVWzz2
 p4eRpebPzNBgAgbKqyRpa87pWc+4KeaojnaxE938pyAkd5iDnfnp2hmmQNTYYy0eSScB
 yPNAqKm3cLmkxTDkXpTnYc2Ga8pqc3WIAbW5WsssHR6byfWiZjwaKNZRqUTbRCbCa9qt
 3ecQ==
X-Gm-Message-State: AOAM531ufZYEjcU16xp4Wn3Kj/VyfjcLJTe9ixhZRdY9MlJPSQL0Wma5
 1fRRHYSZY3nO0qOfnXGOJw==
X-Google-Smtp-Source: ABdhPJy+NhxjKJePpWqaAD37mFHhPh4qNfb6+Bmxc/y0RXg8NO0F1Fx0vK0+C9j4KWtf9vwRiuUBzQ==
X-Received: by 2002:a05:6e02:1287:: with SMTP id
 y7mr4538682ilq.63.1590707885705; 
 Thu, 28 May 2020 16:18:05 -0700 (PDT)
Received: from xps15 ([64.188.179.252])
 by smtp.gmail.com with ESMTPSA id w26sm4128801ill.19.2020.05.28.16.18.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 16:18:04 -0700 (PDT)
Received: (nullmailer pid 861926 invoked by uid 1000);
 Thu, 28 May 2020 23:18:03 -0000
Date: Thu, 28 May 2020 17:18:03 -0600
From: Rob Herring <robh@kernel.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH 5/5] dt-bindings: timer: Add CLINT bindings
Message-ID: <20200528231803.GA847232@bogus>
References: <c0e9e625-daf8-b72f-2237-06018ff5d8a0@gmail.com>
 <mhng-0995a264-b39c-4790-9aa5-b8c598b43ffd@palmerdabbelt-glaptop1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-0995a264-b39c-4790-9aa5-b8c598b43ffd@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_161807_212379_AC5EA425 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, Damien Le Moal <Damien.LeMoal@wdc.com>,
 aou@eecs.berkeley.edu, daniel.lezcano@linaro.org, anup@brainfault.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 seanga2@gmail.com, Atish Patra <Atish.Patra@wdc.com>,
 Alistair Francis <Alistair.Francis@wdc.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, tglx@linutronix.de,
 linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 05:32:30PM -0700, Palmer Dabbelt wrote:
> On Thu, 21 May 2020 23:29:36 PDT (-0700), seanga2@gmail.com wrote:
> > On 5/22/20 1:54 AM, Anup Patel wrote:
> > > On Fri, May 22, 2020 at 1:35 AM Sean Anderson <seanga2@gmail.com> wrote:
> > > > 
> > > > On 5/21/20 9:45 AM, Anup Patel wrote:
> > > > > +Required properties:
> > > > > +- compatible : "sifive,clint-1.0.0" and a string identifying the actual
> > > > > +  detailed implementation in case that specific bugs need to be worked around.
> > > > 
> > > > Should the "riscv,clint0" compatible string be documented here? This
> > > 
> > > Yes, I forgot to add this compatible string. I will add in v2.
> > > 
> > > > peripheral is not really specific to sifive, as it is present in most
> > > > rocket-chip cores.
> > > 
> > > I agree that CLINT is present in a lot of non-SiFive RISC-V SOCs and
> > > FPGAs but this IP is only documented as part of SiFive FU540 SOC.
> > > (Refer, https://static.dev.sifive.com/FU540-C000-v1.0.pdf)
> > > 
> > > The RISC-V foundation should host the CLINT spec independently
> > > under https://github.com/riscv and make CLINT spec totally open.
> > > 
> > > For now, I have documented it just like PLIC DT bindings found at:
> > > Documentation/devicetree/bindings/interrupt-controller/sifive,plic-1.0.0.txt
> > 
> > The PLIC seems to have its own RISC-V-sponsored documentation [1] which
> > was split off from the older privileged specs. By your logic above,
> > should it be renamed to riscv,plic0.txt (with a corresponding change in
> > the documented compatible strings)?
> > 
> > [1] https://github.com/riscv/riscv-plic-spec
> 
> Let's propose tagging that PLIC spec as v1.0.0 in the platform spec group, but
> I don't see a reason why that wouldn't be viable.  Assuming that's all OK, we
> can start calling this a RISC-V PLIC (in addition to a SiFive PLIC, as they'll
> be compatible).
> 
> > > 
> > > If RISC-V maintainers agree then I will document it as "RISC-V CLINT".
> > > 
> > > @Palmer ?? @Paul ??
> 
> The CLINT is a SiFive spec.  It has open source RTL so it's been implemented in
> other designs, but it's not a RISC-V spec.  The CLIC, which is a superset of
> the CLINT, is a RISC-V spec.  IIRC it's not finished yet (it's the fast
> interrupts task group), but presumably we should have a "riscv,clic-2.0.0" (or
> whatever it ends up being called) compat string to go along with the
> specification.

Whatever you all decide on, note that "sifive,<block><num>" is a SiFive 
thing (as it is documented) and <num> corresponds to tag of the IP 
implmentation (at least it is supposed to). So you can't just copy that 
with 'riscv,<block><num>' unless you have the same IP versioning 
and update the documentation.

Using a spec version is fine, but not standalone. You need 
implementation specific compatible too because no one perfectly 
implements any spec and/or there details a spec may not cover.

Rob

