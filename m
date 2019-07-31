Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306A27B8E7
	for <lists+linux-riscv@lfdr.de>; Wed, 31 Jul 2019 06:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6KpLs4IWx29/V8mBI12zOPQ0x1zBDdcZ+j+3xAVhNiE=; b=FwytAIhdT4ewTH
	b2DFm0AJsOhFgVfxkgGPJmojaw9n/y6pP3jqCzRQrvc0/9nMVlZVMcNDeIlSh/XZuam0B7j2Kp6j2
	HmpvL0PrZWU3h4EP/i0Axpp/5JraMGfF5Igf+fCFk2OqcVlG4mzPTDo4XiEzvZB5JviI7Qs7IKwd5
	kNl6F51W3MFWy25TrmRgPiM7T2GdBcAe1aByM78/D0u1cq5osdKk+kWjVPFilX+ypRzT2EfB4JBWw
	Pi/oqwXmPvYfsUtTYpxaghMzbGj3rtLbjtSg0J8qQRHiZ8dB5a+RvYhPyq4BP2rL5ZOw0NB3Vo5WO
	16hEP3clldxiPLqW1OVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsgau-0005vW-Gv; Wed, 31 Jul 2019 04:52:08 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsgaq-0005v6-Sm
 for linux-riscv@lists.infradead.org; Wed, 31 Jul 2019 04:52:06 +0000
Received: by mail-ot1-x342.google.com with SMTP id s20so3328332otp.4
 for <linux-riscv@lists.infradead.org>; Tue, 30 Jul 2019 21:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=xIj00IIxzXm35iWcbJEEMjex/0c7NldacFp3fkJRa7A=;
 b=lnQz8Id5tT7vpViGceKAZWJgiylaDdwMd6Ah4vJWFKirI3VN60C6xnujVSxldwpb9F
 44eZBlATamxo+MJWsMO4oEU7HThWc44+Gj2GoGn6SwJVSd7/l3j7QzZJdXCaCvaGGkre
 GDV4049M8sCt381STog0f3sKV/mtgVRzkyZB4ME3XVJG+op+9jvUBe5GNdmY/CJooFBo
 rqdFI8CgyNrFpnmoDrgICBxUPHbRGSJmuMuZHu0NAH+ddU+kKw3GwM+ToqedTGG9q3da
 +s0mq6vQd2sPmDFu/+TCOjGFJsslIvDbmIVLFLNloKd7BqNyNZ4wfUXfEFOXPjzB31Fb
 W8Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=xIj00IIxzXm35iWcbJEEMjex/0c7NldacFp3fkJRa7A=;
 b=mILksu+yCDiN0g9wmVZRgC5RxTEefQuuqDGASDwY+MOhtgyRpeBuLmfWCBZa4CTNdm
 Nf5Jrvm/W/BK2FxQ8UwGswmC+OvcesGvkMQxByokaviFFC7IDuIAmjqQQVoz8fjZ04sF
 hFs8oaLGisGTbY2P3d3wRCYgW70Q4MRARoXK+cJhMRJSGIyP9WAg3ggM1qRr76+nZF8Q
 8aDtfm9JHOTyIiAzvs+CqpLMnGxwYORhcpdd04hHNkEUKpWzpt9mtAHkH8B3KMXJxxKd
 kSjRKOonBlda+TmYp2nzhyNTgnbnGbhiN3bMt6bOFYhuEPRKha8ZX9A7bFgVGOy76HOU
 tU6A==
X-Gm-Message-State: APjAAAWyAa6m7ieATnMd2spPgENZE+nqhxaAhwgfhe9z1EiXCVUSu+c9
 sADSIEqLT8YZdlq+ZtL+cfwafg==
X-Google-Smtp-Source: APXvYqzKMTKiwt+rmGNMruM+QyuU6sXYvuZ4/b2mUCdPKj/rrkKLhMbecmRKy4JuUPBQ65iIM+zx1g==
X-Received: by 2002:a05:6830:1146:: with SMTP id
 x6mr89587321otq.86.1564548723780; 
 Tue, 30 Jul 2019 21:52:03 -0700 (PDT)
Received: from localhost ([2600:100e:b005:6ca0:a8bb:e820:e6d3:8809])
 by smtp.gmail.com with ESMTPSA id 20sm14543522oth.43.2019.07.30.21.52.02
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 21:52:03 -0700 (PDT)
Date: Tue, 30 Jul 2019 21:52:01 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v2 5/5] dt-bindings: Update the isa string description
In-Reply-To: <20190731012418.24565-6-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907302124010.15340@viisi.sifive.com>
References: <20190731012418.24565-1-atish.patra@wdc.com>
 <20190731012418.24565-6-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_215204_937973_D27B37FA 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Anup Patel <anup.patel@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
 Alexios Zavras <alexios.zavras@intel.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>, linux-riscv@lists.infradead.org,
 Enrico Weigelt <info@metux.net>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 30 Jul 2019, Atish Patra wrote:

> The yaml documentation description of isa strings section doesn't
> specify anything about the case sensitiveness of the isa strings.
> The RISC-V specification clearly specifies it to be case insensitive.
> However, Linux kernel supports only lower case isa strings.

The DT binding documentation specifies an interface.  As such the binding 
isn't determined by any particular piece of software.  So justifying the 
binding update by referring to what the Linux kernel currently supports 
isn't that relevant.  If you still really believe that software should be 
required to handle mixed-case DT ISA strings, the right answer would be to 
change the software, as your original patches proposed.  The way you've 
written this patch description, it sounds like you still don't agree with 
the conclusion that a strictly lowercase string is a good approach.

If I've misunderstood your intent here, and you do think that specifying 
an all lowercase string is sufficient, then instead of the patch 
description above, how about something like:

"Since the RISC-V specification states that ISA description strings are 
case-insensitive, there's no functional difference between mixed-case, 
upper-case, and lower-case ISA strings.  Thus, to simplify parsing, 
specify that the letters present of riscv,isa must be all lowercase."

That way it's clear that, per the RISC-V specification, there's no 
functional difference associated with case.

However, if what you're saying is that you still don't like this outcome, 
let me know and I'll write the patch myself.  That way you don't have to 
have your name associated with a change that you don't believe in.

> Update the yaml documentation accordingly to avoid any confusion.
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> index c899111aa5e3..e22a2b7ebafa 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -46,10 +46,14 @@ properties:
>            - rv64imafdc
>      description:
>        Identifies the specific RISC-V instruction set architecture
> -      supported by the hart.  These are documented in the RISC-V
> +      supported by the hart. These are documented in the RISC-V
>        User-Level ISA document, available from
>        https://riscv.org/specifications/
>  
> +      Linux kernel only supports lower case isa strings. Thus,

In the past, the DT maintainers have pushed back against explicitly 
mentioning the Linux kernel in binding documentation, since the DT 
bindings define an interface that's independent of the underlying software 
implementation.  How about just stating something like "Letters in the 
riscv,isa string must be all lowercase" ?

> +      isa strings must be specified in lower case in device tree
> +      as well.
> +

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
