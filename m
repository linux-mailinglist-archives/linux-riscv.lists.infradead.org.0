Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C911F598C
	for <lists+linux-riscv@lfdr.de>; Wed, 10 Jun 2020 18:59:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PGXejVSpqx4L2PlHIfd5JVBtSOWL/TuutZfvvE958Z8=; b=HnZT1mgh293eZ1zeYrfJD14om
	Kcuujk+4kwcLHse3IJa8MS7W3IIquy8pCJAt00Z2xOsHA5yD9SQTg4xTUJRvwHtbuqm7tDdPPZGq5
	27yv3skklItn7ITp08yrPXl8orczZNfmjAQ8/VQlxIlY3VQGMMlii9plmYwDPK2dOtIeSMQM6J5MG
	2hBNph1vmIpmjWeu7fUHdEAzKaGV9b2FOxawDiuYMnOmP7BaJsDIpzrjIYPg8tvS/QxVBBe73ZZD8
	wkspZbioXD2+GRM8eKlip0Le/29WAyryJzGl4w7mh7varRRWggd63/wUSEEPMQhTpMX6LFPoCwApd
	URRUgrDQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj44O-0002MB-6m; Wed, 10 Jun 2020 16:59:20 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj44L-0002Lj-05
 for linux-riscv@lists.infradead.org; Wed, 10 Jun 2020 16:59:18 +0000
Received: by mail-ej1-x641.google.com with SMTP id l12so3361950ejn.10
 for <linux-riscv@lists.infradead.org>; Wed, 10 Jun 2020 09:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PGXejVSpqx4L2PlHIfd5JVBtSOWL/TuutZfvvE958Z8=;
 b=ZFce94Usj6EkI4Lk9l8ZbLgBKcrOaOEIKI+lsoHoWwucoH5PaFSFEUF5nSpDfmtX/m
 zpiTKIsyT2HuVYK0uUKJl0hfSDP//4+ueTqu4gfQUH9jmW1Fx7086RKZCkNC01IFk27w
 7I94+DibpxplQFqh0putGbec4FKBVLxsfzedA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PGXejVSpqx4L2PlHIfd5JVBtSOWL/TuutZfvvE958Z8=;
 b=q08qCbS4Ysn7CKtw1fTDB2reMLKQ/Mmv4XT3GsxW2XDDziNGA7nHIiYIrEtr2Ibgxj
 GiEhsnwOskUhAkiEteOiO1BJgfRT1pSiDlgycBaAAP7MZAwYTCxkuUlQ7hEnvDBdhQgM
 AUHd0OA8J5c2C3DdMiRtXWlz+7a7Fhy47cbC7MX9cfOdwyxurVwnC/o9PKgBT8497sCa
 EVAnUeHHkMsT3Iup20v3XJ8AqLBesU0WUoZ2JQTZrudA8Z/2TLRq2vzN7TS4CRZfV34C
 SafkIHPa5W7jU2VjMvowQdAgCz1wLsTmBHPUUI5jXfZMMKT03bXlsLFZONrmbbHp+3A8
 PNVQ==
X-Gm-Message-State: AOAM533QgT/TvwM3iUK7+qQQmv6QAduBOPTtDSYaqdVJFHNoWVBFmnV9
 7s/UX/5blwUOe1fKuA/sg6CrMAc83Ug=
X-Google-Smtp-Source: ABdhPJxZEcS/Jiq8pByaY4At6GZ6M5r6NJQ5tvgiy4Gx0Uj6Njr4nMgn5sGCxLiEsnmXm1oAB6/KcQ==
X-Received: by 2002:a17:907:7283:: with SMTP id
 dt3mr4480403ejc.195.1591808354704; 
 Wed, 10 Jun 2020 09:59:14 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id q3sm140727eds.0.2020.06.10.09.59.14
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 09:59:14 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id y17so3082674wrn.11
 for <linux-riscv@lists.infradead.org>; Wed, 10 Jun 2020 09:59:14 -0700 (PDT)
X-Received: by 2002:a2e:8991:: with SMTP id c17mr1979736lji.421.1591808045437; 
 Wed, 10 Jun 2020 09:54:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200610174811.44b94525@thinkpad>
In-Reply-To: <20200610174811.44b94525@thinkpad>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Wed, 10 Jun 2020 09:53:49 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgm0_0PjXaSVbrpDfgtn6UbDyWjSRnXvfdebweUYSZ+eA@mail.gmail.com>
Message-ID: <CAHk-=wgm0_0PjXaSVbrpDfgtn6UbDyWjSRnXvfdebweUYSZ+eA@mail.gmail.com>
Subject: Re: Possible duplicate page fault accounting on some archs after
 commit 4064b9827063
To: Gerald Schaefer <gerald.schaefer@de.ibm.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_095917_043093_64C4BC8C 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Peter Xu <peterx@redhat.com>,
 linux-mips@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-arch <linux-arch@vger.kernel.org>,
 linux-hexagon@vger.kernel.org, Ley Foon Tan <ley.foon.tan@intel.com>,
 Andrea Arcangeli <aarcange@redhat.com>, linux-xtensa@linux-xtensa.org,
 linux-um <linux-um@lists.infradead.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>, openrisc@lists.librecores.org,
 Guan Xuetao <gxt@pku.edu.cn>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Michal Simek <monstr@monstr.eu>, Nick Hu <nickhu@andestech.com>,
 linux-parisc@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 alpha <linux-alpha@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 8:48 AM Gerald Schaefer
<gerald.schaefer@de.ibm.com> wrote:
>
> This was found by coincidence in s390 code, and a quick check showed that
> there are quite a lot of other architectures that seem to be affected in a
> similar way. I'm preparing a fix for s390, by moving the accounting behind
> the retry loop, similar to x86. It is not completely straight-forward, so
> I leave the fix for other archs to the respective maintainers.

Hmm. I wonder if we could move the handling into  handle_mm_fault() itself.

It's _fairly_ trivial to do on the arch side, just as long as you
remember to make the VM_FAULT_MAJOR bit sticky like x86 does with that

        major |= fault & VM_FAULT_MAJOR;

right after handle_mm_fault(). But it certainly doesn't seem like it
would be hard to move into common code in handle_mm_fault() either, by
just not doing the accounting if it's about to return VM_FAULT_RETRY
or VM_FAULT_ERROR.

That said, we want that perf_sw_event() accounting too, so we'd have
to pass in a 'struct regs *' as well. And it's not clear which way
accounting should go for other callers of handle_mm_fault() (ie gup
etc).

So I guess just having architectures fix it up individually and make
sure they don't do it for retry conditions is the right thing to do..

             Linus

