Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 047D39B9F6
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 03:05:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TA3682rLdU1NzHXCac0TxvEjakHK45aNX7nLjWLFmew=; b=GENuRnLHkohl4r
	+ZFzovOPBCp/CVlKzMWJIAa7Pnk+pqWZOcHN+iUdkOW0QLtvFnd3xDMrzmWkDJiLU9ReVZQgIreaV
	BpNtVKUzQb2S2YtxekCRdI5vK6wT3KojLW85Xeos1iE4dsnXkleOCxsE0djPmI8riIecRYxBAwoeO
	2tR6W/W0tQ78wZ9/Qh//rdfEgjCUh87so2n7L/QDzp+BpE/TRRFyH7GOqx+681csPeF+p0OQXiXvQ
	IdtM669bw3q/DoeIqD3Bs3LGi3jjW71L61d8FTy0ZSyxGvO4z8zSgE3hVtW+hR1iQakUlNv+1vSMX
	vxpD0KVhW3g60Br7QlAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1KUJ-0004Co-QF; Sat, 24 Aug 2019 01:05:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1KUF-00043a-GE
 for linux-riscv@lists.infradead.org; Sat, 24 Aug 2019 01:05:01 +0000
Received: by mail-wr1-x444.google.com with SMTP id j16so10093909wrr.8
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 18:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gO3LZsXjDlrVljuF9pShs5ZK+ZVOT1ian+diPFOlUwA=;
 b=NZHvEK/V3VkNVqCIhrt20Lp0WSO1CreVQJZ66aCZCkcyIB8z4QKnjAs/psGK4aK7Rr
 CQ1upJMbOYnl0VFSIZxTgQ4dT4ZN/JwOG1juhr/MY7HGgZi56OVPJ++4nNZfelAQDand
 6IJvdE/PDPxqHcOUv0xinNwmBuytwU+ZALDOaanc+5FFIfPOHCm0PRT9PMR4hJxCbN+w
 hkrH5QjyjawjNbpMdj/d+Uh7sZfoCRdhmx0TukKHL1A+jksI6dy+elWrJoKnaGNSichm
 PN5eT6btNihSlj3aJOlxMZHxRGIphTtMup50MaI0l6okUd1fieScQEi9gcG8ce53louc
 /26Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gO3LZsXjDlrVljuF9pShs5ZK+ZVOT1ian+diPFOlUwA=;
 b=pnou04R4Ab1e2iTaPAcDicNJDR4ZfytnRM0fIsLuA+jgzPhTGFMydrabQmD15+NPBi
 D4MbkJDitmTBv7mlUb/n+ItXgcE9/XL+QR6kbrqJOmoUcbrisu0Gn9MyNqXBY8HtA3Sg
 BjiEg/6oKXCXtINSGpi4WdcoOI9x1m5+T26IM3qP+F77DGWbTNQmZ6rD8ALtdVI4vIwi
 hA2KKAc88zw+iKZoT6v5a7TF0wZIPX0c9M+b2MlluWg3nT7ascXuqzPWHVd/UT38o4+z
 qp96yo9Rx+Tu3E3uHY1NxfKJYGE31DavcQXpGOWULOsVvSR2dk3OZt1bRWLIMTjUHXPi
 Q4rw==
X-Gm-Message-State: APjAAAV4b/10E3sLoMr/Mez75GdBmB2UPr0pTA0VPCikKdm77MEUKp5a
 t2JG2B1jkdnYw/UBpx/2468Wq6jpGf8DEQV+JGY=
X-Google-Smtp-Source: APXvYqz5D7mMCrFwuM61+YXLObcN7TIlZLLBVn5w7crug7bbJPeOkjW+pxDkAfdiT8kM2i/oWuAUBaisZi/3YkTbHYQ=
X-Received: by 2002:adf:f2c1:: with SMTP id d1mr8183863wrp.157.1566608697250; 
 Fri, 23 Aug 2019 18:04:57 -0700 (PDT)
MIME-Version: 1.0
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908231717550.25649@viisi.sifive.com>
From: David Abdurachmanov <david.abdurachmanov@gmail.com>
Date: Fri, 23 Aug 2019 18:04:21 -0700
Message-ID: <CAEn-LTp=ss0Dfv6J00=rCAy+N78U2AmhqJNjfqjr2FDpPYjxEQ@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_180459_568117_67C9CC46 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Fri, Aug 23, 2019 at 5:30 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Thu, 22 Aug 2019, David Abdurachmanov wrote:
>
> > There is one failing kernel selftest: global.user_notification_signal
>
> Is this the only failing test?  Or are the rest of the selftests skipped
> when this test fails, and no further tests are run, as seems to be shown
> here:
>
>   https://lore.kernel.org/linux-riscv/CADnnUqcmDMRe1f+3jG8SPR6jRrnBsY8VVD70VbKEm0NqYeoicA@mail.gmail.com/

Yes, it's a single test failing. After removing global.user_notification_signal
test everything else pass and you get the results printed.

>
> For example, looking at the source, I'd naively expect to see the
> user_notification_closed_listener test result -- which follows right
> after the failing test in the selftest source.  But there aren't any
> results?

Yes, it hangs at this point. You have to manually terminate it.

>
> Also - could you follow up with the author of this failing test to see if
> we can get some more clarity about what might be going wrong here?  It
> appears that the failing test was added in commit 6a21cc50f0c7f ("seccomp:
> add a return code to trap to userspace") by Tycho Andersen
> <tycho@tycho.ws>.

Well the code states ".. and hope that it doesn't break when there
is actually a signal :)". Maybe we are just unlucky. I don't have results
from other architectures to compare.

I found that Linaro is running selftests, but SECCOMP is disabled
and thus it's failing. Is there another CI which tracks selftests?

https://qa-reports.linaro.org/lkft/linux-next-oe/tests/kselftest/seccomp_seccomp_bpf?top=next-20190823

>
>
> - Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
