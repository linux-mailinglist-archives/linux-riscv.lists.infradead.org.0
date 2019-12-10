Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD80117FC7
	for <lists+linux-riscv@lfdr.de>; Tue, 10 Dec 2019 06:33:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pARBlMYqvOprGNNaD4cEJATEpLkcbgueMuYWWsX5QXM=; b=Sfe9QINk0Uw443
	l2peRoeTGLLqy8EkBi9AIVG81U/31+Z4Q+NFmefq9oV5sgbYP0semnUQbASNXv8meEA13zHBKuFXk
	dffFZb5FgyB1Qoo/Lzya6hLMHZZR866YJhUuKyaxT6UDrFFU5oHkjOG9GaQ5kMZb/NlO/BI7CcVMt
	9G85j05fLJaz7Fa9DRT0soxY3VlOi3o79atb06pUrRMmUsMdKUsToQIBxaKUXgPOE4D1pMwOK9jCR
	trLx+PgYMy2LCunI+Zzsj5aS8WiwVqcbnk7/HMC2gFLysbKlvant/1mU6G5K7UkP9je37+SyakcMf
	sf1ccEKWtcFL2BciV9oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieY8r-0005fW-R9; Tue, 10 Dec 2019 05:33:01 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieY8o-0005eQ-3M
 for linux-riscv@lists.infradead.org; Tue, 10 Dec 2019 05:32:59 +0000
Received: by mail-qt1-x841.google.com with SMTP id g17so1660123qtp.11
 for <linux-riscv@lists.infradead.org>; Mon, 09 Dec 2019 21:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pARBlMYqvOprGNNaD4cEJATEpLkcbgueMuYWWsX5QXM=;
 b=qo5TxFS7WobJt6/HnO+0OYNxmZnhCYVjZrLKJQoSbO6lrnLMxe6KlfvBB8frB3mo7B
 oGW2M1VX04Z3YpVqCragD302lQgoQgJNiThPAXQEtDqn1zTrVBZaFVcEjjEKcATjLazG
 AFabANzyETfrDtYMzu/wljj1p+KGt9702LDCxXGqZGQT4bYkFENJMRm8JJ8URwWp4At1
 KZWlwOq18kvX482nrd/PRv4UdnK0kowOVVVCHz89VcoG6G3n86NOQUYrukup60HbJJsf
 XoLT+xUpuOev5TEuAhnQvRion06QwWyacY86hI/JgaGhEwtgd6BUk1GboWUmg11dtxfA
 yNIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pARBlMYqvOprGNNaD4cEJATEpLkcbgueMuYWWsX5QXM=;
 b=SbqHGaV8P8J4u+NPS8o1Gch6HGacztB0IAuRM57PvRRCcxokWUroIvkDHgUF8WtxtM
 SgWYFXBqkqxiuwHVkMHDbdokRCV2iY3Y008vcM+vYZ5tJCmx0riFY/YgxdvUD0BjixBM
 /DTi4p0K0qvsxiI9Htq4NhTqTcZpy3Mk7IlWzAsIuy5BSMGKx4M8G+FzpBOQ6PU1Mrs1
 C6PNMvF+4JJgzmclQ5pZHwTdLlAisrBdk2kvwWBy8PgDDcaGUTfd+GeB52ee7ZGXOgyz
 oEG6zzt6tcgzhLvBqApPaSlbaiHu4tlXc9ihV/Ek6/IvXFaNnS9NmLY40dthMvdt2Iaf
 DURQ==
X-Gm-Message-State: APjAAAUD7JKBqSKgzx+MwLt/aovaRYkO2kDLQnRBMzsv7Irttjy1QOhY
 +Ua5XCkHP7hAeLlNWFyJJM6Pjl4gWAnUUTDmGUY=
X-Google-Smtp-Source: APXvYqydE5ONyFyL4aFxrLVjR7W3kXqSnLjySLRaNX/it6I4quzW8g9mDD+vUVD7IBAjUumwGv2vuVfqDbY8nSsKWso=
X-Received: by 2002:ac8:34b5:: with SMTP id w50mr1645379qtb.107.1575955975988; 
 Mon, 09 Dec 2019 21:32:55 -0800 (PST)
MIME-Version: 1.0
References: <20191209173136.29615-1-bjorn.topel@gmail.com>
 <20191209173136.29615-3-bjorn.topel@gmail.com>
 <CADasFoDOyJA0nDVCyA6EY78dHSSxxV+EXS=xUyLDW4_VhJvBkQ@mail.gmail.com>
In-Reply-To: <CADasFoDOyJA0nDVCyA6EY78dHSSxxV+EXS=xUyLDW4_VhJvBkQ@mail.gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 10 Dec 2019 06:32:45 +0100
Message-ID: <CAJ+HfNi4Ht_+a7+-NWE0LLfGRXJDq1g0cpuyshHY=BJ-+UX4ig@mail.gmail.com>
Subject: Re: [PATCH bpf-next 2/8] riscv, bpf: add support for far branching
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_213258_146623_75F985E3 
X-CRM114-Status: GOOD (  15.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bjorn.topel[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Borkmann <daniel@iogearbox.net>, Netdev <netdev@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>, Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 at 22:08, Luke Nelson <lukenels@cs.washington.edu> wrote=
:
>
> On Mon, Dec 9, 2019 at 9:32 AM Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.c=
om> wrote:
> >
> > This commit adds branch relaxation to the BPF JIT, and with that
> > support for far (offset greater than 12b) branching.
> >
> > The branch relaxation requires more than two passes to converge. For
> > most programs it is three passes, but for larger programs it can be
> > more.
> >
> > Signed-off-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
>
> We have been developing a formal verification tool for BPF JIT
> compilers, which we have used in the past to find bugs in the RV64
> and x32 BPF JITs:
>
> https://unsat.cs.washington.edu/projects/serval/
>
> Recently I added support for verifying the JIT for branch and jump
> instructions, and thought it a good opportunity to verify these
> patches that add support for far jumps and branching.
>
> I ported these patches to our tool and ran verification, which
> didn't find any bugs according to our specification of BPF and
> RISC-V.
>
> The tool and code are publicly available, and you can read a more
> detailed writeup of the results here:
>
> https://github.com/uw-unsat/bpf-jit-verif/tree/far-jump-review
>
> Currently the tool works on a manually translated version of the
> JIT from C to Rosette, but we are experimenting with ways of making
> this process more automated.
>
>
> Reviewed-by: Luke Nelson <lukenels@cs.washington.edu>
> Cc: Xi Wang <xi.wang@gmail.com>

Wow! Very cool! Thanks a bunch for this!

