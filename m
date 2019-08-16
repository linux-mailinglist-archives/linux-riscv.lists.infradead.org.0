Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD2F904C9
	for <lists+linux-riscv@lfdr.de>; Fri, 16 Aug 2019 17:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ErIkIVNRz4E10gUGxP1BhP7waTgK1gRY4GMvz68N6HM=; b=jlg0rAy3Al6nhi
	3II9gqaXcZOMEweKKQeTpIetYRQmgJcv6Qh1y6PV1SuMfcR5X2xCoQgXr01WG7Eiw1rJX0SIl3pim
	9XFQwuGGkGAnjN+XystaXtzBXWyO6/uX1VkqKBjBxAPH9xqysz6hPqPSTiRYzKih4pNPEE9OYspMM
	ucsjN/CKKStB6Chas4MblvEs88F5YTUlDfUJoBP/NEcZvHhDujdQLIInMbsr1cAqFckW/PX4egy08
	N5iR2UUc5bXO81Z55m3YZ8ZF943WZJB2ptkegIY4jLnFm+9z4/cajPcD51GY55Tzgf+79zEQRg8n/
	Bd46Rt80pFnj1uQG1yjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyeJB-0005k2-Pz; Fri, 16 Aug 2019 15:38:30 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyeJ6-0005jf-S9
 for linux-riscv@lists.infradead.org; Fri, 16 Aug 2019 15:38:26 +0000
Received: by mail-pl1-x643.google.com with SMTP id g4so2607264plo.3
 for <linux-riscv@lists.infradead.org>; Fri, 16 Aug 2019 08:38:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1sjtI0Iasc0HZVRi0SPLAcsd+qujzzhESwIxzJI4vj0=;
 b=JdRsopIgAgXXvs01ToAV3LVOgnCPelAtx06m9UaAhWx+BtiE2JaCmbP3F+DiLmwHm6
 gR7UCp8YRuOpz2ubkuHL4MPK+EA1/EvS/wFXWsSVwu+CcEJulneUAZvH1ebk/0x1aA8k
 K+0VWw22kfdXio24s0vUG5mbFCNFi0k7QcZn9BfyY8fm/4mnCBw7xosHu5SVQPB66Hlp
 dDkkRL063kTnv4ZMeXdALo4E9qPaE6BZG3YsibCMGYtYQCLbcHby3E8T+fGuvC286sT0
 cwbgpnl5+v32x3n3HrbQU6A+WH8GavRm9FmEWkvucMjcysvsTwWsLo1IaojwupdcDr4W
 TKGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=1sjtI0Iasc0HZVRi0SPLAcsd+qujzzhESwIxzJI4vj0=;
 b=SvlbJ0o4qOuiDfmUByUOy4TJ8EqheGfM4HvJu0kTdSY1+uRx8WtKFi67bISf4OqYtP
 uEwtBj8OtLFbe7/DePqzkOVLy8pQSi5MnJzKj+r7XWrd081jc3kX6KfEIby4jAy0XxpQ
 jW56zQDe+JwhoDd6NIqHR9GOB/8PFRQyWLgEGsBeXgO6hBvItymWZfbIyRkZI8QqYJ/2
 9jzOLlmtE2BzJLq0tfKE9zWG+ZQFK/acXtr3n7SEUKsEm6pamYR/B9jWuoyH4RGeQgxY
 Io14OZGio7T3C2EMviIOF2x0NN2io4hrxy/TcqoQkbL+J7iSST1gtQ0EbpVweZ0Jupf5
 BM6w==
X-Gm-Message-State: APjAAAU7oZwyu4PyDEou1agGFY3yM/r82kAwb8iDjI2sdzNCq9pYBc21
 4guQokMmkliwLj7htHDm3iYUbdEDgd8=
X-Google-Smtp-Source: APXvYqxoJGg+T+OyaZ/08gLEKOw7pPMXSSQ8uoWAjHtI3FQoBz27j56LZkxtv0eDeB0dr3Ta/lO2Uw==
X-Received: by 2002:a17:902:a60f:: with SMTP id
 u15mr9832800plq.201.1565969903553; 
 Fri, 16 Aug 2019 08:38:23 -0700 (PDT)
Received: from [172.20.2.243] (64-71-28-72.static.wiline.com. [64.71.28.72])
 by smtp.gmail.com with ESMTPSA id y194sm7025035pfg.116.2019.08.16.08.38.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Aug 2019 08:38:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: Random memory corruption with v5.2
From: Troy Benjegerdes <troy.benjegerdes@sifive.com>
In-Reply-To: <f2e56dc61e9c385a1d19270b016650f0684ab72f.camel@wdc.com>
Date: Fri, 16 Aug 2019 08:38:22 -0700
Message-Id: <1A8DBF41-4A10-4835-90AB-6529CAF8AA27@sifive.com>
References: <mvm8sshcdwc.fsf@suse.de>
 <CAEn-LTpM-0TMxkNNh6nnLH9Bnr9Zm+VFLf=z1y9sER6RXrQooQ@mail.gmail.com>
 <mvm1ry8au3f.fsf@suse.de>
 <a47ede7577580987feb279d9879a994786a65d1a.camel@wdc.com>
 <f2e56dc61e9c385a1d19270b016650f0684ab72f.camel@wdc.com>
To: Atish Patra <Atish.Patra@wdc.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_083824_918593_AAE8BA7D 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "schwab@suse.de" <schwab@suse.de>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 "david.abdurachmanov@gmail.com" <david.abdurachmanov@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



> On Aug 15, 2019, at 10:22 PM, Atish Patra <Atish.Patra@wdc.com> wrote:
> 
> On Thu, 2019-08-15 at 13:52 -0700, Atish Patra wrote:
>> On Tue, 2019-07-30 at 08:56 +0200, Andreas Schwab wrote:
>>> On Jul 30 2019, David Abdurachmanov <david.abdurachmanov@gmail.com>
>>> wrote:
>>> 
>>>> On Mon, Jul 29, 2019 at 1:51 PM Andreas Schwab <schwab@suse.de>
>>>> wrote:
>>>>> Since switching to 5.2 kernels I'm seeing random crashes and
>>>>> misbehaviors on the HiFive, for example while building gcc or
>>>>> glibc.
>>>>> Perhaps missing TLB flushes?
>>>> 
>>>> Do you have some examples of crashes?
>>> 
>>> While building glibc:
>>> 
>>> an_ES.UTF-8...realloc(): invalid pointer
>>> /bin/sh: line 1:  7841 Aborted                 (core dumped)
>>> I18NPATH=. GCONV_PATH=/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/iconvdata LC_ALL=C /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/elf/ld-linux-riscv64-lp64d.so.1 --library-path
>>> /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/math:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/elf:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/dlfcn:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/nss:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/nis:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/rt:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/resolv:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/mathvec:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-
>>> base/support:/home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/nptl
>>> /home/abuild/rpmbuild/BUILD/glibc-2.29/cc-base/locale/localedef
>>> $flags --alias-file=../intl/locale.alias -i locales/$input -f
>>> charmaps/$charset --prefix=/home/abuild/rpmbuild/BUILDROOT/glibc-
>>> 2.29-0.riscv64 $locale
>>> make[2]: *** [Makefile:422: install-archive-an_ES.UTF-8/UTF-8]
>>> Error
>>> 134
>>> 
>>> While building gcc:
>>> 
>>> ../../gcc/ada/exp_aggr.adb: In function
>>> 'Exp_Aggr.Expand_N_Aggregate':
>>> ../../gcc/ada/exp_aggr.adb:5311:21: warning: 'Csiz' may be used
>>> uninitialized in this function [-Wmaybe-uninitialized]
>>> ../../gcc/ada/exp_aggr.adb:5220:10: note: 'Csiz' was declared here
>>> +===========================GNAT BUG
>>> DETECTED==============================+
>>>> 10.0.0 20190727 (experimental) [trunk revision 273844] (riscv64-
>>>> suse-linux) |
>>>> Storage_Error stack overflow or erroneous memory
>>>> access                  |
>>>> Error detected at
>>>> output.ads:39:8                                        |
>>> realloc(): invalid pointer
>>> 
>>> raised PROGRAM_ERROR : unhandled signal
>>> make[3]: *** [../../gcc/ada/gcc-interface/Make-lang.in:140:
>>> ada/exp_ch3.o] Error 1
>>> 
>>> Andreas.
>>> 
>> 
>> Can you give it a try with following patch in OpenSBI & Kernel ?
>> 
>> Linux kernel:
>> http://lists.infradead.org/pipermail/linux-riscv/2019-August/005889.html
>> 
>> OpenSBI:
>> http://lists.infradead.org/pipermail/opensbi/2019-August/000386.html
>> 
>> In my testing, I no longer the stress-ng error or glibc local install
>> issue if I use following command.
>> 
>> sudo make -j8 localedata/install-locale-files
>> DESTDIR=/home/atish/glibc/build/install
>> 
>> 
>> I still see segmentation fault if I use a archieve locale install
>> command.
>> 
>> sudo make -j8 localedata/install-locales
>> DESTDIR=/home/atish/glibc/build/install
>> 
> 
> I am also able to run above archive locale install command successfully
> multiple times after removing the corrupted locale-archive files
> present in install path. 
> 
> Let me know if it works for you as well. 
> 
> I am now running stress-ng & parallel glibc locale install together to
> fully stress the system.
> 
> Regards,
> Atish
>> But the error dump doesn't contain remap() error. Just a segmentation
>> fault which may be due to userspace or just different version of old
>> tlbflush problem.
>> 
>> 
>> Regards,
>> Atish
>> 
> 
> 

Is this with stock linux-5.2.8 release, with no additional patches, or is there something we need to look at backporting?


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
