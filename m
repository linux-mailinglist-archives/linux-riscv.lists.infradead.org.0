Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CB91952F8
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Mar 2020 09:34:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fAYVGJNIimAyG00gFMc1jxfAVQANq/okPzu47LrIvdk=; b=H5EwGjTYjGigfd8C+WsLwBkoF
	TY5is55lmwLeACedpKm0vF/hVVk4pUFu1t/HuoxvXrj3qdG6E89GTnroEnJprePGlj/SAyxa6IISl
	Y0+hSIeAIhTrV/o2QZMrlXHIkSUTTpAJHf8Sve/f78uLQjGcHzqKaq2mIHILrgulki/OEvgENHIEY
	GVExxqbzNTyTECMJ0YTEwSJvytHevZuXJap8cgij7o0GFIv5L32DEl9hUCqjcg1Bjh9SKSBBPwBxT
	jakRt11rrSw5LU+eXpDIGiN3DzLNPC4z0DbkD5jbqyoliwFpSF1aQAoXNPEe4Hlkf40ZlQOKsL5q6
	VwV/3BhJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHkRA-0007lI-Tr; Fri, 27 Mar 2020 08:33:56 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHkR6-0007kk-NP
 for linux-riscv@lists.infradead.org; Fri, 27 Mar 2020 08:33:54 +0000
Received: by mail-qv1-xf42.google.com with SMTP id m2so4467126qvu.13
 for <linux-riscv@lists.infradead.org>; Fri, 27 Mar 2020 01:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fAYVGJNIimAyG00gFMc1jxfAVQANq/okPzu47LrIvdk=;
 b=aSLLT2aiCiyT3qNnTz/nl0SvyNz3QnnYJ8suTwEx3GnNhhp4vsumG51eT8w9cgpho2
 7hqJznfoLhTQHiLfhU9I3htfbM5E02qcqCEFRZLZOiDtumaL/T/awkMTdkC4CInsbsNf
 GQrYJfVue/nZTypSbkcATS84xvPV3RDaFcn+UKq/qg3BQd+PntbpfZgKy1J2OROdbl9y
 jyo1Q4g/q/ovSZbk6vQGfDzocimrFE/BMEQajmgzCfz9NLCJIlgGNgq5yJGtSLqq7zFo
 dkVBPMpoMEO1ol1OL56cHlqqDPLz97XCpxOKkbbwSj7OG1ATDe7T4wVSeKbbN6Rn0+rn
 ADYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fAYVGJNIimAyG00gFMc1jxfAVQANq/okPzu47LrIvdk=;
 b=WQab/wCdbbHZCFdwNsy2L4bvIgfuf0FqmlsJAOzKgOO6D/Ur+FoOU9/Mb3zrFz/XAT
 8BgsrgcYGyx0/pLdJ+mNRQvtUK8/y1Qp6MchR+M4OyjNq+KS/ffQoUgF8IG+hL+a06dC
 9I7JK7iblQHxCcdROD7sPsl/xOMh14wxnAI2GL9fTlzK161g8IXPp5QCtiSl5ZTWWX+7
 aSpE1jj0qmliYtdNU9xMpCLwj+ewytS/+85D2yJaKRMUp43n4etP85dwQK28K3gEDcVp
 MV+jB5kKevVVJzvsv5xSNm985j7bYRgjgwfHZlPZ6sZgH8wOC/dg6Jn04ptBv4ufJ49x
 0eTA==
X-Gm-Message-State: ANhLgQ2ECvUpcob8TeejnHZdBbmNDlQ9VMdNEEc/lCP1hgxU1xx2QcT1
 Eglmb8Z81rZbnVWUn+a5HsEbe6LkdP+L0EqfOWa2uQgfpdg=
X-Google-Smtp-Source: ADFU+vvE52CTVRilfTa8ea9ItaixmNf/QhWnMRWAXsNH420m4FxufAIGwjr2bNvFMvlmlHHao5HjBqH7Yg39QgQKITg=
X-Received: by 2002:ad4:5429:: with SMTP id g9mr12159726qvt.134.1585298031096; 
 Fri, 27 Mar 2020 01:33:51 -0700 (PDT)
MIME-Version: 1.0
References: <mhng-e1457171-db30-49be-9e98-298f4d1453ed@palmerdabbelt-glaptop1>
 <490218026.13345.1585239426829.JavaMail.zimbra@efficios.com>
In-Reply-To: <490218026.13345.1585239426829.JavaMail.zimbra@efficios.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Fri, 27 Mar 2020 16:33:40 +0800
Message-ID: <CABvJ_xiGzFY6mUAx7xZDUuk=bUWt3SDsDyzFFODmtuXA28NQzg@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] rseq/selftests: Add support for riscv
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_013352_793402_5F991048 
X-CRM114-Status: GOOD (  17.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 linux-kselftest <linux-kselftest@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Mar 27, 2020 at 12:17 AM Mathieu Desnoyers
<mathieu.desnoyers@efficios.com> wrote:
>
> ----- On Mar 26, 2020, at 11:49 AM, Palmer Dabbelt palmer@dabbelt.com wrote:
>
> > On Sun, 08 Mar 2020 22:59:52 PDT (-0700), vincent.chen@sifive.com wrote:
> >> Add support for risc-v in the rseq selftests, which covers both
> >> 64-bit and 32-bit ISA with little endian mode.
> >>
> >> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> >> ---
> >>  tools/testing/selftests/rseq/param_test.c |  23 ++
> >>  tools/testing/selftests/rseq/rseq-riscv.h | 622 ++++++++++++++++++++++++++++++
> >>  tools/testing/selftests/rseq/rseq.h       |   2 +
> >>  3 files changed, 647 insertions(+)
> >>  create mode 100644 tools/testing/selftests/rseq/rseq-riscv.h
> >
> > There are a ton of checkpatch errors in here.
>
> Is it just my mail client or the main issue is:
>
> ERROR: DOS line endings
>
> ?
I am not sure, but I did not run into this error in my environment.

>
> As far as other issues are concerned, I know there are a few checkpatch
> false-positives that trigger for my rseq-{$ARCH}.h header, from which rseq-riscv.h
> is derived, because it has issues with extensive use of inline assembly.
>
> Thanks,
>
> Mathieu
>
Thank Mathieu for your explanation.

The errors reported by checkpatch.pl can be categorized into two
cases. The first one is "need consistent spacing around %". such as
ERROR: need consistent spacing around '%' (ctx:WxV)
#628: FILE: tools/testing/selftests/rseq/rseq-riscv.h:572:
+       RSEQ_ASM_DEFINE_EXIT_POINT(2f, %l[error2])
where RSEQ_ASM_DEFINE_EXIT_POINT is defined as below
#define RSEQ_ASM_DEFINE_EXIT_POINT(start_ip, exit_ip) \
    ".pushsection __rseq_exit_point_array, \"aw\"\n"        \
    ".quad " __rseq_str(start_ip) ", " __rseq_str(exit_ip) "\n"  \
    ".popsection\n"

These errors were mainly found in the rseq-riscv.h. As Mathieu
mentioned, the RSEQ_ASM_DEFINE_EXIT_POINT macro is used in the inline
assembly, which the second argument %l[error2] indicates the error2 is
a label and it locates outside of the inline assembly. To obey the
syntax, I cannot add a space after % to fix this bug.

The second kind of error is "Macros with complex values should be
enclosed in parentheses" such as
ERROR: Macros with complex values should be enclosed in parentheses
#27: FILE: tools/testing/selftests/rseq/param_test.c:210:
+#define RSEQ_INJECT_INPUT \
+       , [loop_cnt_1]"m"(loop_cnt[1]) \
+       , [loop_cnt_2]"m"(loop_cnt[2]) \
+       , [loop_cnt_3]"m"(loop_cnt[3]) \
+       , [loop_cnt_4]"m"(loop_cnt[4]) \
+       , [loop_cnt_5]"m"(loop_cnt[5]) \
+       , [loop_cnt_6]"m"(loop_cnt[6])
In this case, it was a input operand list of inline assembly, so I
could not add parentheses to enclose them. Except for these two kinds
of error, there are two erros could be solved by adding parentheses. I
also checked it and I think it would be safe. So, I mimic the
implementations of other architecture without using parenthese. If
needed, I think can add the parenthese to solve these two errors.
Thanks

