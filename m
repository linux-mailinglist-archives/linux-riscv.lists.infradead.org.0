Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64AB510819D
	for <lists+linux-riscv@lfdr.de>; Sun, 24 Nov 2019 04:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZoZ4nZWQINYZpvhjvVkG+2Ib6FnhXPbtjrsAzZvTpg=; b=RHn/pU4D7K4AKW
	2Nkx1sHqG0PKRag71ienIwiS67alk0b1MgCp7QwBLrsdtHz0OpzCtu8vySslaeom6yqdTIm7csHBr
	tWhcwq2ctJTx/g/QxTBPaaQlpaQbsWModERc9EvW68YVDZztVOnEajcdBMSq6OGdRhTyZjk/mhWXo
	odz2ZureMCLj08e+K3+hswEt+Z78uViAmetUP7cF+GMJ8BVrtQn36xxBv68z61n7h/MbmZ+WW2tTa
	Ypj3dMrpSinEJ69GazwDilwRA3wiY+FzGzjpSWL+peeZp0ojx8SrwwQvIP+qulbj6jtCOa3AihZtE
	tVzNAHyAj8Xzxj7L7RlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYijP-0005Uk-R5; Sun, 24 Nov 2019 03:38:39 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYijM-0005Tm-3y
 for linux-riscv@lists.infradead.org; Sun, 24 Nov 2019 03:38:37 +0000
Received: by mail-oi1-x241.google.com with SMTP id d22so10115525oic.7
 for <linux-riscv@lists.infradead.org>; Sat, 23 Nov 2019 19:38:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bh1aHdYDRSuy1cqsFnjQSoB8H/BTadJ3WbQDfyJeyo8=;
 b=DDcy7HCiW4uxxRJ+HLA1pdHzn60CxNSOECSOvKR3pi8JXKhP705g5MTrvZoiGHQBK7
 Bj65re2eHhSVvQBx0Glpw2EOvnVZwCGEuyy95UdQhKMXIQ8PtixX1FS6gy7d4XQ2A51K
 kda8H8QwJ+Bkb5i1cWhgTQd8GGg30e0TeZuSpaWAEaQQPSmXgtJwaZSXTHGeR5x+TuE3
 I+9EOuLMznWx+Pe9QX9erEveQdWkGmjw22g1PYMfva9lcVy6kn+BDpEcJlO/j8lI45Dq
 5dlWtKtP+NVXSq+QHxWqF0D/G6P9vtrEvjsMV1K+1zaAgAfhWof3/SxiCjwp5sSXZV38
 tcRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bh1aHdYDRSuy1cqsFnjQSoB8H/BTadJ3WbQDfyJeyo8=;
 b=mRMf+sS59P4Gzacr9Z12/rzcn+YoZjcvk8dw5l4elSQ5DZgJHKljMB5e8/V42MrbID
 Sy1qSB3cUhyZVkg4QGlz8XmP4jxkwUQZ7WWXzoOPfWXxVXeThDiFLFdwN7staZHVzwDQ
 7smq2RS9Ix6uC7Y5eZ+McJvaQPEQcZTFyLFu/O3UoTLnVmrzH3+s6uKnTCk+BYyH0zgk
 ZhY4+3BPwfRamQ7YMr7QmoiaJUnVM1sIR9V1rHnXA++COE2bZ+MOAr944A6G5fk50Q2o
 QSEDNMXjBZNfAQYupjq0ZlNxUsRUuA8xQu8J6xT0VG/gkFVeIbRv1HZe1Oss6pnI9v2p
 FtdQ==
X-Gm-Message-State: APjAAAXza88CTKyXtIIWeHFkUvuOkff/DKfjrO1+QMmgm0oNIiaMNK7l
 wndMV/fYztT+ACye0EFF2JhsZdAD380P+FFKZ1xPtw==
X-Google-Smtp-Source: APXvYqwiQJv+l7hi8NcBC2oEZCV3NVvhW7a5CxKdJznaDcZVAyJGmUY+HGwOeLCL/LE9aOUK3Svxkx3emFRRLkLH7iM=
X-Received: by 2002:a05:6808:1da:: with SMTP id
 x26mr18717951oic.149.1574566713131; 
 Sat, 23 Nov 2019 19:38:33 -0800 (PST)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1911221842200.14532@viisi.sifive.com>
 <20191123092552.1438bc95@lwn.net>
 <alpine.DEB.2.21.9999.1911231523390.14532@viisi.sifive.com>
 <CAPcyv4hmagCVLCTYmmv0U8-YD5BEoQPV=wtm5hbp3MxqwZRQUA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231546450.14532@viisi.sifive.com>
 <CAPcyv4hBNfabaZmKs0XF+UT9Py8zJqpNdu5KsToqp305NASKNA@mail.gmail.com>
 <alpine.DEB.2.21.9999.1911231637510.14532@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1911231637510.14532@viisi.sifive.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 23 Nov 2019 19:38:21 -0800
Message-ID: <CAPcyv4iqTR8s0v8jH7haWCBQAzhZinUEsypiH7Ts9FCf+F9Bvg@mail.gmail.com>
Subject: Re: [PATCH] Documentation: riscv: add patch acceptance guidelines
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191123_193836_224157_CB5255C2 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: krste@berkeley.edu, aou@eecs.berkeley.edu, waterman@eecs.berkeley.edu,
 Jonathan Corbet <corbet@lwn.net>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, palmer@dabbelt.com,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Nov 23, 2019 at 4:42 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Sat, 23 Nov 2019, Dan Williams wrote:
>
> > I took a look, and I think the content would just need to be organized
> > into the proposed sections. The rules about what level of ratification a
> > specification needs to receive before a patch will be received sounds
> > like an extension to the Submit Checklist to me. So I'd say just format
> > your first paragraph into the Overview section and the other 2 into
> > Submit Checklist and call it good.
>
> I'm fine with doing that for this patch.
>
> Stepping back to the broader topic of the maintainer profile patches, one
> comment there: unless you're planning to do automated processing on these
> maintainer profile document sections, it's probably better to let
> maintainers format their own profile documents as they wish.
>
> Just to use the arch/riscv document as an example: the last two
> paragraphs, to me, don't belong in a "submit checklist" section, since
> that implies that the text there only needs to be read before patches are
> submitted.  We'd really prefer that developers understand what patches
> we'll take before they even start developing them.
>
> I imagine we wouldn't be the only ones that would prefer to create their
> own section headings in this document, etc.

I'm open to updating the headers to make a section heading that
matches what you're trying to convey, however that header definition
should be globally agreed upon. I don't want the document that tries
to clarify per-subsystem behaviours itself to have per-subsystem
permutations. I think we, subsystem maintainers, at least need to be
able to agree on the topics we disagree on. Would it be sufficient if
I just clarified that "Submit Checklist Addendum" also includes
guidance about which patches are out of scope for submission in the
first instance?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
