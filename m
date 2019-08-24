Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57BC9B9FE
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 03:11:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJ4NjkpZBFqh8wr2RY7qXsz9EMnBWn4giZIADb+AhcU=; b=JVEf2PZ93PvbhT
	Y0kH1qZ6GDn123nWhlgDA79LoPsJHwuY3IyKxyuNIV5nMWtEms+wcXKnlM2M2X4l86kO5JPN9Bv05
	tWbl+eMjFTTWMbfK/wILzxkIfLwsv4K7kJd424Wx4/d2BMKiFLhZ4U/PJEByHeOmCLqnfK74u0ZTG
	yG3amwr+z3HEtISdCEIOHT392DDFcxEYSnFZnTRcQfVwa2SktPa8YGieMuyX36fwXxr8l4h4psyv/
	8+KSCI0TgXNZlqZ84ZfzP/Fmcf0Bs/8d8+0ZIZ4eeyFkiXx0iQXk6/V4ElrbsbXirjHO9cVRLxL3v
	uzdduLrUZxp+DBgOx2EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Ka5-0006bK-6I; Sat, 24 Aug 2019 01:11:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Ka0-0006av-Ry
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 01:10:58 +0000
Received: by mail-wr1-x443.google.com with SMTP id b16so10097663wrq.9
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 18:10:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=41qUMOD0eN9ewXy9evPZN0TYC9TGr+U54AtzmQ5x03o=;
 b=pJ1qttiH2/TAejvsSIaJsBfJC3X4ms0F4j8RBNKGcnx72+uqFvCTBkeN5ie4j8McDA
 sSURZK3R3i4+L04F5EL0a9zffYefEs0mukbwHcKkgrpvEFNCC3Df3OWVYuKhgQxXhrp0
 fBT5gy3NSGdZ2UUmBj6DliklL3SPZUtjzo6U1+95QeZsoEYIPMH+beo7Om5+qjGHJt0Q
 Ym2Fu8SZ+8lCwmFW+ACV3nO0tmLcQOvsq0pHt37Iov0myUSBC6NX40fSUGL60YIqbnXJ
 Ld7Q6qjxELcwawgYKLcmbKHmKe2Cg6Oe0GzhIaPOtY8KL1lb5JhzvkslSzPFCvlL7PsB
 uaKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=41qUMOD0eN9ewXy9evPZN0TYC9TGr+U54AtzmQ5x03o=;
 b=PWfPEwgicg6EDIXd7HclFJYslY7fKMm2JOQmKv2+yeWOeyaqcCCGgh55rJJiWh6iTR
 1nVpp+s5ifoWSbOi+12aCyCagfxSi41KwnaFBKf7IwT+v4y/ang4M5HPX48U1Y7opNn8
 BEOp6DEnTBCx7XVoQRcFSUWsSh2eN2TqCoENTND1FdGGMejosex7pIEPVIIFVCn5J3mm
 U5+kor7TT+5pC6bvaVIJBaaQl+y6CH3Lsn3h446cqaNAJO9UjYyegkkYXsQ8SCbD3u6a
 uFSnpAt/absUxVGZTEU+MN8Kec99LgUYko20laXxz/cDUnqg8ONlD0/cMRJK1+Ftfc9R
 wIRw==
X-Gm-Message-State: APjAAAXCEp6+Nuu+KrNMccirThsV4ilSVj7HAr/hrS8vpQarrYV3O02H
 SZWOpmQZ25lW2iA43kPnqA95joggpDh49XBJJ7Es7B48FEM=
X-Google-Smtp-Source: APXvYqydp+Vo49g56ZEwK2cZ0glM97zTlW8ryOGhTMmYD6lmAwzRBw5hzZmSPywrxkbYQA/edItRemRP6hCC9Zp+YEY=
X-Received: by 2002:adf:e5cd:: with SMTP id a13mr7785955wrn.316.1566609054327; 
 Fri, 23 Aug 2019 18:10:54 -0700 (PDT)
MIME-Version: 1.0
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
 <CAEn-LTp=ss0Dfv6J00=rCAy+N78U2AmhqJNjfqjr2FDpPYjxEQ@mail.gmail.com>
In-Reply-To: <CAEn-LTp=ss0Dfv6J00=rCAy+N78U2AmhqJNjfqjr2FDpPYjxEQ@mail.gmail.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Fri, 23 Aug 2019 18:10:17 -0700
Message-ID: <CAEn-LToT7YPwoBWO919Q0nkd9mj_Bup6n14q3LmXJYK1M1UXhg@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_181056_934533_29B4B1E1 
X-CRM114-Status: GOOD (  17.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (david.abdurachmanov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Tycho Andersen <tycho@tycho.ws>, Daniel Borkmann <daniel@iogearbox.net>,
 Yonghong Song <yhs@fb.com>, me@carlosedp.com,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>,
 Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 6:04 PM David Abdurachmanov
<david.abdurachmanov@gmail.com> wrote:
>
> On Fri, Aug 23, 2019 at 5:30 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> >
> > On Thu, 22 Aug 2019, David Abdurachmanov wrote:
> >
> > > There is one failing kernel selftest: global.user_notification_signal
> >
> > Is this the only failing test?  Or are the rest of the selftests skipped
> > when this test fails, and no further tests are run, as seems to be shown
> > here:
> >
> >   https://lore.kernel.org/linux-riscv/CADnnUqcmDMRe1f+3jG8SPR6jRrnBsY8VVD70VbKEm0NqYeoicA@mail.gmail.com/
>
> Yes, it's a single test failing. After removing global.user_notification_signal
> test everything else pass and you get the results printed.
>
> >
> > For example, looking at the source, I'd naively expect to see the
> > user_notification_closed_listener test result -- which follows right
> > after the failing test in the selftest source.  But there aren't any
> > results?
>
> Yes, it hangs at this point. You have to manually terminate it.
>
> >
> > Also - could you follow up with the author of this failing test to see if
> > we can get some more clarity about what might be going wrong here?  It
> > appears that the failing test was added in commit 6a21cc50f0c7f ("seccomp:
> > add a return code to trap to userspace") by Tycho Andersen
> > <tycho@tycho.ws>.
>
> Well the code states ".. and hope that it doesn't break when there
> is actually a signal :)". Maybe we are just unlucky. I don't have results
> from other architectures to compare.
>
> I found that Linaro is running selftests, but SECCOMP is disabled
> and thus it's failing. Is there another CI which tracks selftests?
>
> https://qa-reports.linaro.org/lkft/linux-next-oe/tests/kselftest/seccomp_seccomp_bpf?top=next-20190823

Actually it seems that seccomp is enabled in kernel, but not in
systemd, and somehow seccomp_bpf is missing on all arches thus
causing automatic failure.

> >
> >
> > - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
