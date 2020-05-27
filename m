Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EBC31E3950
	for <lists+linux-riscv@lfdr.de>; Wed, 27 May 2020 08:34:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jx9SX41huVcDZiGVXn4KLHGf8p6glxvggfevEnjr7ck=; b=q0yy6MtYad9e9w
	f0FyZLjW7YPdA6Eb8ci7VufRshhmqWhjxekbC4dgGAWZyxrWLmw2xQVK3Kl6LI6R5gIs/KvlGBmVv
	OHP88pz6/ecbsEHL2ZjTy2O+8mbU6OpPxkjncmg4JriAPztZNLxJq+9mH9f13BMEodawHmhWC9gJr
	hKCDkJjPWXtcnDn8vOQAQT4SO5e/VbS5rysY9PLPB9lbxN138jBLrcI49y/DicgG7LPxEeZ96tGUp
	/IT3r3H8jfJorywbjKSse0vMHCjRgshOgn6ztV9d5t7Nc1oIh1IlyovJ6pUeb/r5FFr0jCAgvR2d3
	n6K6sn4pNnJDFuTBVfVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdpdt-0000KG-EY; Wed, 27 May 2020 06:34:21 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdpdq-0000JO-96
 for linux-riscv@lists.infradead.org; Wed, 27 May 2020 06:34:19 +0000
Received: by mail-qt1-x842.google.com with SMTP id a23so18375991qto.1
 for <linux-riscv@lists.infradead.org>; Tue, 26 May 2020 23:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Jx9SX41huVcDZiGVXn4KLHGf8p6glxvggfevEnjr7ck=;
 b=LxZUYmW+vGsrD9WsnMdwwpO+3z98b/3TylSSaEs2WO6+8sBBPUIWJT8SK1UEMyHf3/
 J5VkdG5WcPeWLB+M0ZXGmPcsZ1/JMDVuA6kPMt++lkD/iIebit8/NJ6QfVOHsNEp7AuX
 JM0xZMAQNOu0EW1yv6FI16qk6gXgeDYh3XCCbzNECS22cdxucfUOTdKQouAcMhMA68VB
 4OACz8FmZgoTIf/B0wPdeoeMIbnb5Y6W/O83pCut5it/xxCy3V+a86SPYYYJN8ysiS1l
 3IjcFnhCo6ZmFj+UVtYupDNvGv9AhmtaSpOYs2d9EtVdxUJvxe8pJ67br84Svq3/ahUB
 fQrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Jx9SX41huVcDZiGVXn4KLHGf8p6glxvggfevEnjr7ck=;
 b=iXAryOVpzYt1bOz3jUXLWJ0i4c0N4bW8OzS+BjpTdL1449aOhZmGumfUIVbVfVOyqC
 2Rd3dt0ZbBAMJdVp3fAutGPIEYKIdcuFqZtkUX6G1SS8TU09zBTh4wzohePP1nJN0ZC7
 0OtEQPVOM39aMXBoqQuQ3VtcOZXt0LLpOXqwZyEbCYAWIJRHlEAyI5Lfu5+wyuw8abdg
 mkchBqfFFoUALIJqn1XYcVBjRL/UXxkseXYs907BQA6wt6XTw2A/qGXV9pTtmrqGvcuk
 lUY550hVpLUA2rFrgHZdNfbMxnYe2YvCDlQV0JBKXabH1tIvyHeoB4lte4x0NKcpW0qr
 /EXQ==
X-Gm-Message-State: AOAM532rC95s0JowRRHci558veoOaXa9r/CG8KfNCa0+XfBEVaz+hz0K
 jPMofAu1nPGNiBF04qqFBz3pgOvMCQyC0fugTBoWgA==
X-Google-Smtp-Source: ABdhPJygUAGiWPIVOy2S3rSccVsC239CPZ1BWXgy+//5Yp1P/kg1zrolxguOEZcIkdtH+ylTD1po5rTJXylKAHC13nc=
X-Received: by 2002:ac8:31f3:: with SMTP id i48mr2696778qte.128.1590561256702; 
 Tue, 26 May 2020 23:34:16 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1590474856.git.greentime.hu@sifive.com>
 <3700190a602a6d30fcbf76e1eea667e29a65c4c9.1590474856.git.greentime.hu@sifive.com>
 <20200526140027.GC24212@redhat.com>
In-Reply-To: <20200526140027.GC24212@redhat.com>
From: Greentime Hu <greentime.hu@sifive.com>
Date: Wed, 27 May 2020 14:34:05 +0800
Message-ID: <CAHCEehK7BnWUhjOAynCLP6puRo8EguMvf=N8iG5UMQmaD8ekCQ@mail.gmail.com>
Subject: Re: [RFC PATCH v4 01/13] ptrace: Use regset_size() for dynamic regset
 size.
To: Oleg Nesterov <oleg@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_233418_354089_046378F5 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Guo Ren <guoren@linux.alibaba.com>,
 Palmer Dabbelt <palmerdabbelt@google.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Vincent Chen <vincent.chen@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Oleg Nesterov <oleg@redhat.com> =E6=96=BC 2020=E5=B9=B45=E6=9C=8826=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8810:00=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On 05/26, Greentime Hu wrote:
> >
> > @@ -882,13 +882,18 @@ static int ptrace_regset(struct task_struct *task=
, int req, unsigned int type,
> >       const struct user_regset_view *view =3D task_user_regset_view(tas=
k);
> >       const struct user_regset *regset =3D find_regset(view, type);
> >       int regset_no;
> > +     unsigned int size;
> >
> > -     if (!regset || (kiov->iov_len % regset->size) !=3D 0)
> > +     if (!regset)
> >               return -EINVAL;
> >
> >       regset_no =3D regset - view->regsets;
> > -     kiov->iov_len =3D min(kiov->iov_len,
> > -                         (__kernel_size_t) (regset->n * regset->size))=
;
> > +     size =3D regset_size(task, regset);
> > +
> > +     if ((kiov->iov_len % size) !=3D 0)
> > +             return -EINVAL;
>
> Hmm. this doesn't look right.
>
> Before this patch we check "iov_len % regset->size", this is not the same
> as "iov_len % regset_size()".
>
> IOW, currently you can read/write, say, only the 1st register, you patch
> breaks this?
>

Hi Oleg,

Thank you. I misunderstood the meaning of regset->size
It seems I only needs to update this line, right?
- kiov->iov_len =3D min(kiov->iov_len,  (__kernel_size_t) (regset->n *
regset->size));
+ kiov->iov_len =3D min(kiov->iov_len,  (__kernel_size_t)
regset_size(task, regset));

