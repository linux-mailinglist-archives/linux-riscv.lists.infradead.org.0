Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA10AD29CE
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 14:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uwYg1961XfrwWH2F3odxf5whix2r/aw6RQ6erslEvI=; b=u3/MwpSthhFFej
	wFTd5CjX5yA+ddsGUSllBSYd1yVK3wvuw+qSdctt9PTIMneQ85lBDK+4XBzGTo+NSb4hD1es/96Uk
	h7IBos8SdYSEMIO0M5PuADEDDkqqo5jdOFnmWcECvOPGFrhoJxcu3ZANv56SD8uW1hw93Lrr840La
	f3TgJynqTzOoOXED3ict5ZBdgyyftQX70iJjQHsyzkKta/w5bYpyclUsTdEGKFLmbl2ehNC+dCcvw
	jRSjdlVqbDXJ91E0vcW5T/3SELZZoSm0Hv0X3w9TqbQyMeMyCLYkb+c60WkemIlauU6x+LboHzXBh
	GhSnbrzeFODd0tFFVzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIXoR-0003L8-Td; Thu, 10 Oct 2019 12:44:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIXoO-0003KS-EL
 for linux-riscv@lists.infradead.org; Thu, 10 Oct 2019 12:44:58 +0000
Received: from mail-qt1-f169.google.com (mail-qt1-f169.google.com
 [209.85.160.169])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 879BF20679
 for <linux-riscv@lists.infradead.org>; Thu, 10 Oct 2019 12:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570711495;
 bh=YMmXtb2JLA8hWzDQQfOgQycNtJFOok7eUnehOSyP+pA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LriOz2qFhwWE9p03RxfAw5yzayh07CQZffd0SfcdLfaXfS1Hb+hO+G+Ur4d8nIH2U
 YUi80UntVX2mzkp6yJoMMQACXHvwShAcvMC9S+12N4YJh/0pHQreeOohE4Q6wtkfZl
 DVaHHWkcbwGe2dd3mvLAoEPm1Dt2tS+Te6oBNxKI=
Received: by mail-qt1-f169.google.com with SMTP id u22so8418219qtq.13
 for <linux-riscv@lists.infradead.org>; Thu, 10 Oct 2019 05:44:55 -0700 (PDT)
X-Gm-Message-State: APjAAAUj4m8CVEPc6LwVLMol5i31kD2Tb8QqTiNyUW871e8QycRrplZ+
 VdDlDik5IxTOFl1EMQjf9cpGzIlwLJWYfVwfuA==
X-Google-Smtp-Source: APXvYqwNvmWSytFEH52LryQ2mgDyEBuHBeeq3gQeZfuuroZ1Dr7vv+ZkYoV5zzwGc/l367nh1bLcdlmGVo4hk6usLJc=
X-Received: by 2002:a0c:e606:: with SMTP id z6mr9343421qvm.135.1570711494582; 
 Thu, 10 Oct 2019 05:44:54 -0700 (PDT)
MIME-Version: 1.0
References: <20191009234648.2271-1-robh@kernel.org>
 <alpine.DEB.2.21.9999.1910091657240.11044@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1910091657240.11044@viisi.sifive.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 10 Oct 2019 07:44:43 -0500
X-Gmail-Original-Message-ID: <CAL_JsqK==+6QPrx3NDobYfWQwRg9m-t0LZgL=KzqfhAfbu+xTg@mail.gmail.com>
Message-ID: <CAL_JsqK==+6QPrx3NDobYfWQwRg9m-t0LZgL=KzqfhAfbu+xTg@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: riscv: Fix CPU schema errors
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_054456_525250_5E644D70 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Oct 9, 2019 at 7:08 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Wed, 9 Oct 2019, Rob Herring wrote:
>
> > Fix the errors in the RiscV CPU DT schema:
> >
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@1: 'timebase-frequency' is a required property
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0', 'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible: ['riscv'] is too short
> > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> >
> > The DT spec allows for 'timebase-frequency' to be in 'cpu' or 'cpus' node
> > and RiscV is doing nothing special with it, so just drop the definition
> > here and don't make it required.
>
> The RISC-V kernel code does in fact parse it and use it, and we currently
> rely on it being under /cpus:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/kernel/time.c#n19
>
> The RISC-V user ISA specification also constrains the timebase-frequency
> to be the same across all CPUs, in section 10.1:
>
>   https://github.com/riscv/riscv-isa-manual/releases/download/draft-20190608-f467e5d/riscv-spec.pdf
>
> So the right thing is to require 'timebase-frequency' at /cpus, and forbid
> it in the individual CPU nodes.

Yes, but this schema only deals with 'cpu' nodes and we can't check
/cpus here. We'd need to write another schema matching on a child cpu
node having a RiscV compatible.

I can change this to 'timebase-frequency: false' to ban it here. That
doesn't add too much as any undefined name is still allowed such as
'timbase-frequency'. There's a way to address this in json-schema
draft8 with 'unevaluatedProperties', but that's not ready yet.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
