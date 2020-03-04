Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6380B178B41
	for <lists+linux-riscv@lfdr.de>; Wed,  4 Mar 2020 08:24:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+0StPfC8X5r/f0uwQzYAuENN0Fy4oQ3SfFfmaNBTQnc=; b=mtXDJmqpZTUL/FseWMKBUYiJj
	RQPqFZUs9r4oknRXhBXaELO68ascaq5mPfcEl+WpBMQBum15xZl0Z6gW+uiXD64g+JjJu2AOHLLnH
	4GpokzByBuFoRiBi0IgF1hz677Ui9NgqZRc1i3IoLec76H/XPTG/om3JC7Gx5KyhWyC5cDomuYZAQ
	6+RB7LCXToY2tMWD8jOMY3XjBCqrYZlr6ARi4AESd3OR/o7IjYXkvzmwc+URUN2kbCCE3LPMZL4/D
	pexFfzoM/4MFlDghFjH6MZI5eXc2nXAYIFOg8KjCbvGpW/6tg7n5wSytxkS8B2cCrDFiDaXGuklWU
	JbFRM8tSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9OOP-00063O-3q; Wed, 04 Mar 2020 07:24:33 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9OOM-00062r-2r
 for linux-riscv@lists.infradead.org; Wed, 04 Mar 2020 07:24:31 +0000
Received: by mail-io1-xd43.google.com with SMTP id x21so1237850iox.13
 for <linux-riscv@lists.infradead.org>; Tue, 03 Mar 2020 23:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+0StPfC8X5r/f0uwQzYAuENN0Fy4oQ3SfFfmaNBTQnc=;
 b=X5H4VtDyPvqJAdUJVPRhTnJNzg0cr0lXQnBxXOFBn70TvIaxwS7X1BhYAA6rW6iMx/
 2KL8fW6WmM9hvIfkxJ9HJLlSveCUGVutVFlbs/Dn3AB07u+7H4rIDUAkprO6clAYF+fk
 Yp/tkE8C0hW1UN84pzTDY8f0QLod+qUSCGqHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+0StPfC8X5r/f0uwQzYAuENN0Fy4oQ3SfFfmaNBTQnc=;
 b=Inuh8FoFSBEb+3c5gcLNK9LIdyewFvHT7/oqRwuAuhe+9+sCNAj388AtCnOpw0N4gn
 2mh1PfBXxHoKKtA0jyiwdPB+aZ9GJfc90ee6r9QypgA29iR5ljjA3RswTVPwPZtD3TWS
 O58s6kCjHuaJM0PLqWb9L0y3jIsPRqPNTYMvbQn/tWSpIXd1DvI+mEgTXk9rXbSvHooJ
 HBk0mh0cXsbAyEIrdbjiY3rnCo6Fdiv1u1xBWxGUWnsjM1CENI0KWz1OJ4UZwCtFc5dW
 NdhwhaWmyh/iAaaWXfSXWr/eCtEyjFXiio88u5LnX/uBYRRpfnJ7ZSA8NH1bZjL0lHSJ
 NjOg==
X-Gm-Message-State: ANhLgQ17Qg5HoyftZKbKWcjkA5wkFIhdOLnVreEK1fRRRytBzBmPU1AW
 pWbdZDwNf/SM3eT7ipIuunN/y/Of/KukI3B8WPwlng==
X-Google-Smtp-Source: ADFU+vtDP7J5I0uMr20ywNsGyuaqUtek9TyRHdnutO5YfvwGkuTKwFkRZeZRpw6nW1oXLNcQ+vXM+/g2FixK4+iaGBM=
X-Received: by 2002:a02:a1c9:: with SMTP id o9mr1543147jah.33.1583306668640;
 Tue, 03 Mar 2020 23:24:28 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-3-luke.r.nels@gmail.com>
 <CAJ+HfNjgwVnxnyCTk5j+JCpxz+zmeEBYbj=_SueR750aAuoz=A@mail.gmail.com>
 <CADasFoBODSbgHHXU+iA-32=oKNs6n0Ff_UDU3063uiyGjx1xXg@mail.gmail.com>
 <CAJ+HfNhOp_Rbcqer0K=mZ8h+uswYSv4hSa3wCTdjjxH26HUTCw@mail.gmail.com>
In-Reply-To: <CAJ+HfNhOp_Rbcqer0K=mZ8h+uswYSv4hSa3wCTdjjxH26HUTCw@mail.gmail.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Tue, 3 Mar 2020 23:24:17 -0800
Message-ID: <CADasFoA3JN7PkvnVAmFZOFeDo2WgWzViankpwwRRWcjebSx+DQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 2/4] riscv, bpf: add RV32G eBPF JIT
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_232430_127757_E0C36F03 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Netdev <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> I like that, but keep the first patch as a refactoring patch only, and
> then in a *new* patch 2 you add the rv32 specific code (sltu and
> pseudo instructions + the xlen preprocessor check + copyright-things
> ;-)).  Patch 3 will be the old patch 2. Wdyt?

Thanks! I'll make sure that patch 1 is for renaming bpf_jit_comp.c
and factoring code out. Do you think it's reasonable to add the
RV32-specific code to the header in the same patch that adds the
RV32 JIT implementation (patch 2)? It might make sense to commit
them together.

The full plan for v5 would be:

Patch 1

- Refactor existing code to bpf_jit.h and bpf_jit_core.c
  + Including the minor modifications to build_body() and
  bpf_int_jit_compile() (These are unrelated to RV32 and we could
  forego these tweaks).
  + Also making emit_insn and build_{prologue,epilogue} non-static
  and renaming them to be prefixed with "bpf_jit_".
- Rename bpf_jit_comp.c to bpf_jit_comp64.c

Patch 2

- Add the RV32 BPF JIT implementation to bpf_jit_comp32.c and
RV32-specific changes to bpf_jit.h.

Patch 3

- Update documentation.

Patch 4

- Update MAINTAINERS.

Thanks again,

Luke

