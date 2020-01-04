Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 123F112FFF7
	for <lists+linux-riscv@lfdr.de>; Sat,  4 Jan 2020 02:32:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iKdXV40zp7HYQhCw5RprjfcGR+hom7KuV7z8YSCgMYs=; b=Sx4RY57Bz5E46atsMM/K6+X7a
	o/XuoB95I5egYBhWOG3SBfvwQdzNGJDXzHxMjiHmZbtlVG3gzI/p9TX+InAnf9U+Cbw08STMuv0LZ
	o7nLaPid8FyXJNCju0LM3eJUG6uSNL/sdMonJDMKTT8iajBI0oeSXhFw0A8qO5YKQzWqq3gr4aTXc
	HL7CkV/dXTRMVLVrB/Nd9PYNusKwS2zIO4H0m6usVuqk2icCl2GmSd67/h51tHaDR2UqUSfDE1SFA
	Ys8ITcXg4fnpykGZolkCN4fYip45N2W+pJ3c4brdz64t0qkvsKTCfsZKvsW57htq1svQa2KyAoUaW
	kzM8q01cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inYIU-0006S1-HL; Sat, 04 Jan 2020 01:32:10 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inYIR-0006R8-8d
 for linux-riscv@lists.infradead.org; Sat, 04 Jan 2020 01:32:08 +0000
Received: by mail-il1-x141.google.com with SMTP id b15so38106770iln.3
 for <linux-riscv@lists.infradead.org>; Fri, 03 Jan 2020 17:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=iKdXV40zp7HYQhCw5RprjfcGR+hom7KuV7z8YSCgMYs=;
 b=HmRuxu85O6nXMh3jZKc0jQ4vIRFwSX7D1SDnRXGAlQJlFXBJTiUs5MQzfLSpm3iX5v
 yn01sJE8UQj+QFu6XeqVbvbjhNUlkV9K2k1a3Sz5ksjhuzlDtSBDHt1kYkcgToGD1Srs
 2y7sh8jVk9CJYRYursqhw/FJi1XOLlIWjh6vE00ty231/eeQOkr46nnXnzWNmRuzkw3k
 hy2BeeYy0zIFLUOJ0FQzRgocSV1exn3sxnjceHNWp5xLehgeUYUHmcavpP6mwGRBCofU
 m4EfZmBz3TJsQp4PbBAQISdlk5+YHy4XGV6LIcwVkyYvgsa46SCwnKd66J1fr3XQh62a
 b2bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=iKdXV40zp7HYQhCw5RprjfcGR+hom7KuV7z8YSCgMYs=;
 b=UQhE1qJnQqVCnB1UugvT0KCP6UKVbCYMs0Qi++KGRJ6DL0M1l3wbaFCNIDHiI+kUBt
 5IFRU5oiFKzKJgJ2/empWUp0hYVG4/v1Z2UNgYYgAzOQhKzfqfbvuMjk4g/EvW/7jyiS
 dRs+t9QL3PsoxvjLVlUgwbLzth8VnjfUT2jEd63idQwsJTA/E1AiIbxufSTcoRnBsrQh
 RUOq1swTl+9+KBmPaud5X2ZXuBWmbNRCx19Tvqter/RYOBHpkIRKOqfAEqgwl8/T2Sh+
 w/SttWrWeN41c89ZUKuVsfYBErnbuM5mkYIBw4MYmzaYqbkMN8UK7KANLN1KVh+b4vm9
 dfwg==
X-Gm-Message-State: APjAAAXwnVzMbxuMMNDdZ27Vlv+vh4kiC0U1itrraYbAREwGUICfneLz
 eKi6qBSXQq4Do3qCBaHsLurEeQ==
X-Google-Smtp-Source: APXvYqxC81dX9dHMssrjHa5TmlbNO4RsuH5crfUxEdlHwXaJLKMHx5AGZAhB3yUDZRovGPY/3S4k2g==
X-Received: by 2002:a92:884e:: with SMTP id h75mr78174164ild.199.1578101524531; 
 Fri, 03 Jan 2020 17:32:04 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id 75sm21496162ila.61.2020.01.03.17.32.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 17:32:03 -0800 (PST)
Date: Fri, 3 Jan 2020 17:32:02 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: =?ISO-8859-15?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Subject: Re: [PATCH bpf-next v2 6/9] riscv, bpf: provide RISC-V specific JIT
 image alloc/free
In-Reply-To: <CAJ+HfNgmcjLniyG0oj7OE60=NASfskVzP_bgX_JXp+SLczmyOQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.2001031730370.283180@viisi.sifive.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-7-bjorn.topel@gmail.com>
 <7ceab77a-92e7-6415-3045-3e16876d4ef8@iogearbox.net>
 <CAJ+HfNgmcjLniyG0oj7OE60=NASfskVzP_bgX_JXp+SLczmyOQ@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-452107929-1578101522=:283180"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_173207_308779_153F0BE4 
X-CRM114-Status: GOOD (  16.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Daniel Borkmann <daniel@iogearbox.net>,
 Netdev <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-452107929-1578101522=:283180
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Wed, 18 Dec 2019, Bj=C3=B6rn T=C3=B6pel wrote:

> On Mon, 16 Dec 2019 at 16:09, Daniel Borkmann <daniel@iogearbox.net> wrot=
e:
> >
> > On 12/16/19 10:13 AM, Bj=C3=B6rn T=C3=B6pel wrote:
> > > This commit makes sure that the JIT images is kept close to the kerne=
l
> > > text, so BPF calls can use relative calling with auipc/jalr or jal
> > > instead of loading the full 64-bit address and jalr.
> > >
> > > The BPF JIT image region is 128 MB before the kernel text.
> > >
> > > Signed-off-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> > > ---
> > >   arch/riscv/include/asm/pgtable.h |  4 ++++
> > >   arch/riscv/net/bpf_jit_comp.c    | 13 +++++++++++++
> > >   2 files changed, 17 insertions(+)
> > >
> > > diff --git a/arch/riscv/include/asm/pgtable.h b/arch/riscv/include/as=
m/pgtable.h
> > > index 7ff0ed4f292e..cc3f49415620 100644
> > > --- a/arch/riscv/include/asm/pgtable.h
> > > +++ b/arch/riscv/include/asm/pgtable.h
> > > @@ -404,6 +404,10 @@ static inline int ptep_clear_flush_young(struct =
vm_area_struct *vma,
> > >   #define VMALLOC_END      (PAGE_OFFSET - 1)
> > >   #define VMALLOC_START    (PAGE_OFFSET - VMALLOC_SIZE)
> > >
> > > +#define BPF_JIT_REGION_SIZE  (SZ_128M)
> > > +#define BPF_JIT_REGION_START (PAGE_OFFSET - BPF_JIT_REGION_SIZE)
> > > +#define BPF_JIT_REGION_END   (VMALLOC_END)
> > > +
> >
> > Series looks good to me, thanks; I'd like to get an ACK from Palmer/oth=
ers on this one.
> >
>=20
> Palmer/Paul/Albert, any thoughts/input? I can respin the the series
> w/o the call optimizations (excluding this patch and the next), but
> I'd prefer not given it's a nice speed/clean up for calls.

Looks like Palmer's already reviewed it.  One additional request: could=20
you update the VM layout debugging messages in arch/riscv/mm/init.c to=20
include this new area?

thanks,

- Paul
--8323329-452107929-1578101522=:283180--

