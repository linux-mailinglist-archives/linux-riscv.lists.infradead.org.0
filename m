Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55CB3179E98
	for <lists+linux-riscv@lfdr.de>; Thu,  5 Mar 2020 05:27:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sS9dvBtV87gMWUGiIiRGt8RJH5mq+llNqMeBOdVmClE=; b=DdcKpRN9eeTowL
	I7avTQ46NwiQrpP2GgGEpIyC9AQ10X9DAuLav3lGdDnVYNgT0t5UeP23S//sc4fvodnnEUIQdBF/2
	hvqMDctBEMuVkuSiI0mXnix1d0jRa2EZVu+kJyCvEQQz4q6g8XcNtPuvfCy8ctb5wC1RuaxfMhrQb
	yTAbSrNAylk1t4KymzZB8adq6MYtD6vVVQGv+bX2ipH92ja4vqKzeUTcgJ1GFRcWnAmbQRR3wSTFr
	AuW6ai0OtYQdGV2yTaAa8IwD3a7dJ7/daooKvCl2VnZk39YV1k6F1MohqjV4HInSiWTA9B9M1/y5u
	tHmHQwoKJ4QnWRY61TIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9i6S-00028u-5F; Thu, 05 Mar 2020 04:27:20 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9i6P-00028L-46
 for linux-riscv@lists.infradead.org; Thu, 05 Mar 2020 04:27:18 +0000
Received: by mail-lf1-x142.google.com with SMTP id j11so3416118lfg.4
 for <linux-riscv@lists.infradead.org>; Wed, 04 Mar 2020 20:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=sS9dvBtV87gMWUGiIiRGt8RJH5mq+llNqMeBOdVmClE=;
 b=Z9snj2lvrSLPdsNRBeZOWFaNcyEqk6Dwqvz7hhIVeSaaaJCnXCFQaGOKcUx7z48tXu
 SXmKi+SvTc23cCXr4QQtXz1pXBjtoWoTqLJYNZq8zvUDJ9XjbSq8/TVJDQ1QzOUbD9CY
 oFqY4TO8J3rw5ylDKUW8yOktXBimepvIs3uLSniPjraAFxfp9JZZTL68kFSdrbxODRJa
 o9MSbvOXYwncfHefEmYQyrqOD4HlKx2+IgTEnnkV8+8etB4xEzdQYC2z4EMTcki9aQdA
 wv1WpvFnYwlULtXQkq+LSv1i1Hn+LOtYJw2mOlfnJC1UWJoFvVrbf7b5irUxIopu5M92
 iC4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=sS9dvBtV87gMWUGiIiRGt8RJH5mq+llNqMeBOdVmClE=;
 b=WONHHTg4Ud+lOxgicFMMneliZRD4VSLrQp8//xecQUJUOYqbI44DJVQjhEyRwQTDWK
 uT+qex4dHSYSvesZxnOQbue1X+E/f9uEJ8tByCrk9eypgCHR7rMnZqEUpSyKqJfjdLW/
 gIkUHdAhnIHf/hCuahjtm4wFw8IJ3rbfr44zWrkAX0yHjNiP+L6rgdYq2n2KgyVUK6Pl
 hMtCjw3bEf2A9lRLsLCCl1DWv+JHaK2tMpZgKSOiW7vnWlQsYTmi6qKJ5EBoC3Jd3Q12
 T40RUga2cqnYwQFv6WV3XFEeaU2kS5PZjWKgs0W5+bs/U8uItmvH8eu23o9YRq84TT5x
 G0ew==
X-Gm-Message-State: ANhLgQ1a7K3tlBYKArtz1N4Yqfn62byPTLM0tUj3QiNvjxZS/onQ6sU9
 46oKdVg5HwB2F6qZbVLNbEiZxVLvXOOZCYHIpE0=
X-Google-Smtp-Source: ADFU+vvj68an1VQy2p4AvnAIwRe0iWTeTc/g/rEg7MViupDuWdJ35eXqac0LFWQ9snFVtaSEIz+2tlonbwlmYG8vTf0=
X-Received: by 2002:a05:6512:3188:: with SMTP id
 i8mr4256307lfe.26.1583382435049; 
 Wed, 04 Mar 2020 20:27:15 -0800 (PST)
MIME-Version: 1.0
References: <20200217083223.2011-9-zong.li@sifive.com>
 <mhng-da89b7a8-70ef-4ac2-9d56-a4ddab325e9c@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-da89b7a8-70ef-4ac2-9d56-a4ddab325e9c@palmerdabbelt-glaptop1>
From: Zong Li <zongbox@gmail.com>
Date: Thu, 5 Mar 2020 12:27:03 +0800
Message-ID: <CA+ZOyairbeQaaJw6VcKWvJzPKkE4-g=p3U45s8gZSrBG=K+jGw@mail.gmail.com>
Subject: Re: [PATCH 8/8] riscv: add two hook functions of ftrace
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_202717_191859_56349266 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zongbox[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Albert Ou <aou@eecs.berkeley.edu>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Zong Li <zong.li@sifive.com>, Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Palmer Dabbelt <palmer@dabbelt.com> =E6=96=BC 2020=E5=B9=B43=E6=9C=885=E6=
=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=889:44=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Mon, 17 Feb 2020 00:32:23 PST (-0800), zong.li@sifive.com wrote:
> > After the text section be mask as non-writable, the ftrace have to
> > change the permission of text for dynamic patching the intructions.
> > Add ftrace_arch_code_modify_prepare and
> > ftrace_arch_code_modify_post_process to change permission.
> >
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >  arch/riscv/kernel/ftrace.c | 18 ++++++++++++++++++
> >  1 file changed, 18 insertions(+)
> >
> > diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
> > index c40fdcdeb950..576df0807200 100644
> > --- a/arch/riscv/kernel/ftrace.c
> > +++ b/arch/riscv/kernel/ftrace.c
> > @@ -7,9 +7,27 @@
> >
> >  #include <linux/ftrace.h>
> >  #include <linux/uaccess.h>
> > +#include <linux/memory.h>
> > +#include <asm/set_memory.h>
> >  #include <asm/cacheflush.h>
> >
> >  #ifdef CONFIG_DYNAMIC_FTRACE
> > +int ftrace_arch_code_modify_prepare(void) __acquires(&text_mutex)
> > +{
> > +     mutex_lock(&text_mutex);
> > +     set_kernel_text_rw();
> > +     set_all_modules_text_rw();
> > +     return 0;
> > +}
>
> None of the other architectures are doing anything remotely like this in =
these
> functions, despite many supporting STRICT_KERNEL_RWX.  Having a function =
that
> maps all text as RW seems super dangerous, as one stack attack means NX i=
s
> gone.
>
> Looks like FIX_TEXT_POKE0 is the magic that makes the other ports work.
>

Your concern is right. Let me change the way.

> > +
> > +int ftrace_arch_code_modify_post_process(void) __releases(&text_mutex)
> > +{
> > +     set_all_modules_text_ro();
> > +     set_kernel_text_ro();
> > +     mutex_unlock(&text_mutex);
> > +     return 0;
> > +}
>
> Presumably this needs a icache flush as well?  Probably better to do so w=
hen
> installing the instructions, though.
>

Yes, I think I lost it. Thanks.

> > +
> >  static int ftrace_check_current_call(unsigned long hook_pos,
> >                                    unsigned int *expected)
> >  {
>

