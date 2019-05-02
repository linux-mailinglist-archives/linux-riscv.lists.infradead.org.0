Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114B9110B3
	for <lists+linux-riscv@lfdr.de>; Thu,  2 May 2019 02:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLHsdHeL99Xv8lmEjaA5UZ1HGNYbiENukc+u1uYZQnc=; b=UV9qwVqqAXaosB
	UIhUA3WbW2M7Hkdb4W1ZGPH/FWaQeB9ZC5wLy62CCka4aSEc2DcEtyc9isEstzKR7gPhOjQOJbAa5
	Xz4/Xyrg3Q9Jt0XjNCPMcHFFvXGw+E2LTEtA2u92An8W+VvQYgalI7rOEraISohiFrzMxxJWJWolz
	0Lrql6p5nVKJPbvPyRTwqraKEooVpX0rg0YYKB8D9InW460h7U8CCbTOdnHWsgu5Xg1LNJhoPvIr4
	ACNrX9mvB8AyrQIAgDP3Qm61b1vJlfka9g9D1g2np3HwDCn3/JgfIM17TL2tepF4U+vOKzBdK/Rn/
	7JIeXifiujtRmTp0+Q2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLzn4-0001nX-WF; Thu, 02 May 2019 00:41:35 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLzn2-0001m3-LF
 for linux-riscv@lists.infradead.org; Thu, 02 May 2019 00:41:34 +0000
Received: by mail-oi1-f193.google.com with SMTP id l203so407917oia.3
 for <linux-riscv@lists.infradead.org>; Wed, 01 May 2019 17:41:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=que7/XzZjSIdcZCiQ2C0xFwZqf7GgbSdIDqky43ue24=;
 b=n5xo3Z6KW/4HspSfynquGg5rBxFhjUAQ40h80xx4Kw/tgGG9wHWIr1setoOS6a01tA
 3vNpSBzf5JXl/wctz6UuKV60pwlhZWLIPw1akW9aE7w+lbmc6DAJls1AvF4lANYsNcaq
 hBcbmMeiY38gkyNX4F2VeBaN85UO69Sr0zUD596bbgxoI+2dzYsMixEasZ+NDzIcTmmQ
 5H2GaqeSdyxxHsGA047r1hF67ekCYGrfNMdyuwhDe9rT4XXwO2zjfYPpgNtNmou1JzXz
 z1Zm0YT9T8eyUxvjxwuTdE5gJKFLKlXFjuFsBNfU8x0yGYXJI0iWZZxXwGkI39oXnQFf
 8pqQ==
X-Gm-Message-State: APjAAAWRQflWrBSiR/fqJUmVENF80IrCZqNzTZiPFppNoGPYTJ6/Uexo
 ReGlXZ8tRes/8Wf3B/BPVA==
X-Google-Smtp-Source: APXvYqz8ZZRbI0y5MUDWv1ckT2hvi/9XcubJQbSxUnrPuqm32Tec220tSjKVsA6maV8FYwrgYjAKDQ==
X-Received: by 2002:a54:4f02:: with SMTP id e2mr708714oiy.10.1556757691527;
 Wed, 01 May 2019 17:41:31 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 110sm1115344otu.9.2019.05.01.17.41.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 01 May 2019 17:41:30 -0700 (PDT)
Date: Wed, 1 May 2019 19:41:30 -0500
From: Rob Herring <robh@kernel.org>
To: Yash Shah <yash.shah@sifive.com>
Subject: Re: [PATCH 1/2] RISC-V: Add DT documentation for SiFive L2 Cache
 Controller
Message-ID: <20190502004130.GA20802@bogus>
References: <1556171696-7741-1-git-send-email-yash.shah@sifive.com>
 <1556171696-7741-2-git-send-email-yash.shah@sifive.com>
 <20190425101318.GA8469@e107155-lin>
 <CAJ2_jOEBqBnorz9PcQp72Jjju9RX_P8mU=Gq+0xCCcWsBiJksw@mail.gmail.com>
 <20190426093358.GA28309@e107155-lin>
 <CAJ2_jOEoD=Njp+L+H=jG59mA-j9SnwzyNmz7ECogWmbvei_f5Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJ2_jOEoD=Njp+L+H=jG59mA-j9SnwzyNmz7ECogWmbvei_f5Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_174132_695857_5F215CAC 
X-CRM114-Status: GOOD (  23.90  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Sudeep Holla <sudeep.holla@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Sachin Ghadi <sachin.ghadi@sifive.com>,
 aou@eecs.berkeley.edu, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 09:50:45AM +0530, Yash Shah wrote:
> On Fri, Apr 26, 2019 at 3:04 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Fri, Apr 26, 2019 at 11:20:17AM +0530, Yash Shah wrote:
> > > On Thu, Apr 25, 2019 at 3:43 PM Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > On Thu, Apr 25, 2019 at 11:24:55AM +0530, Yash Shah wrote:
> > > > > Add device tree bindings for SiFive FU540 L2 cache controller driver
> > > > >
> > > > > Signed-off-by: Yash Shah <yash.shah@sifive.com>
> > > > > ---
> > > > >  .../devicetree/bindings/riscv/sifive-l2-cache.txt  | 53 ++++++++++++++++++++++
> > > > >  1 file changed, 53 insertions(+)
> > > > >  create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > > new file mode 100644
> > > > > index 0000000..15132e2
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
> > > > > @@ -0,0 +1,53 @@
> > > > > +SiFive L2 Cache Controller
> > > > > +--------------------------
> > > > > +The SiFive Level 2 Cache Controller is used to provide access to fast copies
> > > > > +of memory for masters in a Core Complex. The Level 2 Cache Controller also
> > > > > +acts as directory-based coherency manager.
> > > > > +
> > > > > +Required Properties:
> > > > > +--------------------
> > > > > +- compatible: Should be "sifive,fu540-c000-ccache"
> > > > > +
> > > > > +- cache-block-size: Specifies the block size in bytes of the cache
> > > > > +
> > > > > +- cache-level: Should be set to 2 for a level 2 cache
> > > > > +
> > > > > +- cache-sets: Specifies the number of associativity sets of the cache
> > > > > +
> > > > > +- cache-size: Specifies the size in bytes of the cache
> > > > > +
> > > > > +- cache-unified: Specifies the cache is a unified cache
> > > > > +
> > > > > +- interrupt-parent: Must be core interrupt controller
> > > > > +
> > > > > +- interrupts: Must contain 3 entries (DirError, DataError and DataFail signals)
> > > > > +
> > > > > +- reg: Physical base address and size of L2 cache controller registers map
> > > > > +
> > > > > +- reg-names: Should be "control"
> > > > > +
> > > >
> > > > It would be good if you mark the properties that are present in DT
> > > > specification and those that are added for sifive,fu540-c000-ccache
> > >
> > > I believe there isn't any property which is added explicitly for
> > > sifive,fu540-c000-ccache.
> > >
> >
> > reg and interrupts are generally optional for normal cache and may be
> > required for cache controller like this. DT specification[1] covers
> > only caches and not cache controllers.
> 
> Are you suggesting something like this:
> 
> Required Properties:
> --------------------
> Standard Properties:

I don't think we need this separation.

> - compatible: Should be "sifive,<chip>-ccache"
>   Supported compatible strings are:
>   "sifive,fu540-c000-ccache" and "sifive,fu740-c000-ccache"
> 
> - cache-block-size: Specifies the block size in bytes of the cache
> 
> - cache-level: Should be set to 2 for a level 2 cache
> 
> - cache-sets: Specifies the number of associativity sets of the cache
> 
> - cache-size: Specifies the size in bytes of the cache

What are the possible valid values for these? That's what's important. 
What the properties mean are already defined in the spec.

> 
> - cache-unified: Specifies the cache is a unified cache
> 
> Non-Standard Properties:

I wouldn't call these non-standard.

> - interrupt-parent: Must be core interrupt controller

This is implied.

> 
> - interrupts: Must contain 3 entries for FU540 (DirError, DataError and
>   DataFail signals) or 4 entries for other chips (DirError, DirFail, DataError,
>   DataFail signals)
> 
> - reg: Physical base address and size of L2 cache controller registers map
> 
> - reg-names: Should be "control"

-names is not really needed when there is only 1 entry.

> 
> - Yash
> >
> > --
> > Regards,
> > Sudeep
> >
> > [1] https://github.com/devicetree-org/devicetree-specification/releases/download/v0.2/devicetree-specification-v0.2.pdf

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
