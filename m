Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C24D3073
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 20:35:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyokD6Yd6+QrT56KVLieandMGmONgKO2Km+0dcibg+E=; b=gUz5ukJ4e/03HU
	MGqKQOD22rLO2C6JJBqkAmWCj2OJTYTKn+fOev/SHwadL/BMDeGvp5q/IJZDiZ3sXWsiTcnAWcP0a
	LRzQAoWxyuOiqON/qnf4vlf+6eZcy+grGR/egL1Y73Oi2YL6xCV0J/pplUXTCFpEbumRVHMg4l6gV
	Q7AIVWfwkltkG/grSibxeJBqTVsSJ2cNvFVEIhV08YPVh6cA4i7q5FOmWU3FHUiQqW+yxc9tXUbka
	N43p6CviDLLA8GZiCVNw9SrgorToTpxTjXqkYKt+57CtBabCrRonmZRhSYij5Zmk8RZ1jiu4eEkS0
	lKKosQ8wQ4tpUjFaTMyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIdHE-0000vq-6k; Thu, 10 Oct 2019 18:35:04 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIdHA-0000jr-EI
 for linux-riscv@lists.infradead.org; Thu, 10 Oct 2019 18:35:02 +0000
Received: by mail-ot1-x341.google.com with SMTP id y39so5765011ota.7
 for <linux-riscv@lists.infradead.org>; Thu, 10 Oct 2019 11:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=r4XAjDc0xfpf5vzfo/i7Ws66r6JtB7Z+yeiV1OLT15o=;
 b=Mv4MgHakwlbkZi54pRbq6rETPbooTcIqnnEmLH++AM/dbjJdkhLvcNrXOW6IsB/pgz
 d3BRPjAYgQBUlrZUnlPimOcZM56EUiNxYWXroi33EWcAq5Fahw8qTgF6f72D6D5a6YWU
 7q+yiS2BlxAegJ+W9jG3+epyOA7gnmnpBJPqvF325FE5RJDugDklSWrk6RcuPRm8gboS
 NTLPeYmYJHcKWhneSddbCJX/CvCvSPdD+dJPI1kA6LYqbcEzzn6/LZmG47mjRo0eR6jX
 EBgk0m7BwCElwY/08rYUe0cf8VTuxLShCP1sxj18C0SXkFF458ooK8/QtW7p1Ueg0kBu
 IevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=r4XAjDc0xfpf5vzfo/i7Ws66r6JtB7Z+yeiV1OLT15o=;
 b=rlQN18VgzNeIQgR14+A/IKDNZni7BaTY75VElQZpTrIVfsAC7ECgdRxAou6G1bEqqB
 AJlXPUdx0g5O8tB1Cz7cA3VUJF+bTobz0ZbxozFzLLRnf3XxWXIkbWPpWahKvaMpo16n
 rrryL2+u60IhVw6h3uqGoBXrpFrEjaF8kYrhVqh2hkCq1tU7YH4HxtmHu5vA/4drQTgc
 UOm0FohBLl9pyuM0SXXfyXrtnNoXH5iVv8RtldHYyfGxlajUE7K5YrrETLZRbU941ftc
 fGS2KV/QxLfL+dWjotrM/0TJmbiFqXDyh5xFFzuis0M1xQWkHWmqdU1GjjdB4VfyIo06
 3MFA==
X-Gm-Message-State: APjAAAVQFUUNlHndUH0IkwvujlwzCC1eYOdy766T4iEMfvey+vg7Hj1P
 xoNR2f+FbYkpyIRrQg+/kXAxkA==
X-Google-Smtp-Source: APXvYqxflYfMilSfm+EF8uvVn9CW8v2d/Bajx2LYtYV1/X7fPOeBeGReXzuA/f5bw8ZARuEpamC1jg==
X-Received: by 2002:a9d:3675:: with SMTP id w108mr6677517otb.81.1570732498705; 
 Thu, 10 Oct 2019 11:34:58 -0700 (PDT)
Received: from localhost ([2600:100e:b04d:43d4:f34c:fed9:3a80:e86d])
 by smtp.gmail.com with ESMTPSA id w25sm1914021oth.39.2019.10.10.11.34.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 11:34:58 -0700 (PDT)
Date: Thu, 10 Oct 2019 11:34:55 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2] dt-bindings: riscv: Fix CPU schema errors
In-Reply-To: <CAL_JsqK==+6QPrx3NDobYfWQwRg9m-t0LZgL=KzqfhAfbu+xTg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1910101132440.4464@viisi.sifive.com>
References: <20191009234648.2271-1-robh@kernel.org>
 <alpine.DEB.2.21.9999.1910091657240.11044@viisi.sifive.com>
 <CAL_JsqK==+6QPrx3NDobYfWQwRg9m-t0LZgL=KzqfhAfbu+xTg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_113500_509799_0BD013DC 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Thu, 10 Oct 2019, Rob Herring wrote:

> On Wed, Oct 9, 2019 at 7:08 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Wed, 9 Oct 2019, Rob Herring wrote:
> >
> > > Fix the errors in the RiscV CPU DT schema:
> > >
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@1: 'timebase-frequency' is a required property
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0', 'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible: ['riscv'] is too short
> > > Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
> > >
> > > The DT spec allows for 'timebase-frequency' to be in 'cpu' or 'cpus' node
> > > and RiscV is doing nothing special with it, so just drop the definition
> > > here and don't make it required.
> >
> > The RISC-V kernel code does in fact parse it and use it, and we currently
> > rely on it being under /cpus:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/kernel/time.c#n19
> >
> > The RISC-V user ISA specification also constrains the timebase-frequency
> > to be the same across all CPUs, in section 10.1:
> >
> >   https://github.com/riscv/riscv-isa-manual/releases/download/draft-20190608-f467e5d/riscv-spec.pdf
> >
> > So the right thing is to require 'timebase-frequency' at /cpus, and forbid
> > it in the individual CPU nodes.
> 
> Yes, but this schema only deals with 'cpu' nodes and we can't check
> /cpus here. We'd need to write another schema matching on a child cpu
> node having a RiscV compatible.
> 
> I can change this to 'timebase-frequency: false' to ban it here.

Sounds good to me.  (Might catch the occasional mistake.)  With that 
change, the resulting patch would be

Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # for arch/riscv

and thanks indeed for cleaning this up.

> That doesn't add too much as any undefined name is still allowed such as 
> 'timbase-frequency'. There's a way to address this in json-schema draft8 
> with 'unevaluatedProperties', but that's not ready yet.

OK


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
