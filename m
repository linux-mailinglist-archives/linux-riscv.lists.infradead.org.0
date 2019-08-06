Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286A4829DB
	for <lists+linux-riscv@lfdr.de>; Tue,  6 Aug 2019 05:01:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NunaPntQsHK0nf/qfSgsDUpG/swB5ss6tgPgizSTb0=; b=pSgsq3Pp6JWuXN
	CYvy1pBEvEK6CaXkCyEy9cXyzCNLNYRs9pW3nDJfcMxTN4kOXeMFHAw1XHPkrmZhWFkeKsatdqX40
	B0BN56U43fow437wPHcllf+vnrX2xnZQSjlePWcWv1zuUnAJSWRXQbm+/YPpjiYzwD6j0jAfo4QKM
	L1qoX7CobP+pbJ0adL0LlVkaNEkYwDQZkZwfUD0q71WtIJC9Jr3oo1GplEimHy7wH7PIPsyzE1DQ4
	V0/ebzXKJ++0InXSERBVPb2ZqJ239hM2q2hlEFJV6h+hkm87EPGpNvOT2UWZDNDSWTH23/wLAk0f2
	CXDn/4u1b2JEevYnvp2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hupjM-0002K9-6w; Tue, 06 Aug 2019 03:01:44 +0000
Received: from mail-ua1-x930.google.com ([2607:f8b0:4864:20::930])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hupjJ-0002Jn-8e
 for linux-riscv@lists.infradead.org; Tue, 06 Aug 2019 03:01:42 +0000
Received: by mail-ua1-x930.google.com with SMTP id c4so6272998uad.1
 for <linux-riscv@lists.infradead.org>; Mon, 05 Aug 2019 20:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w9QrRTL0hG3ns4VEopkOG/oLGe4tSoNctV6OmCt1MEU=;
 b=bmPKnjOF9d15rQu9avtq0BYEmP05D2R5NVTyAUrjKX5G/0vYkjGok7+Okn/gcxMCFo
 24b5erVfDyXi3h5/VqOOw3DZmh5DURmO0NtbsCeP/0ASAsx1e3oW73ZukVgCYBnolITi
 CZNwrdRUdkVrjUDz8B+i635/Wu3Dx7Uj7thgTXWodVhxQ/69TDZtqVgPGb4K0V484hiQ
 nNdc1PG/G/OqWEgplE3gR7C1/5w44qqCLEpuMkffNSS0nqjz8vPQHOxj0hh9Rz3j3G72
 VY8XfgsJHjctqL7ZovEktzaJEh3ZsvC+Ee6S9KisQYXyc9KfHovWUaWGgK0uJKbuualg
 7CSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w9QrRTL0hG3ns4VEopkOG/oLGe4tSoNctV6OmCt1MEU=;
 b=prIYsGHLVwZfzlUiopW0mVGeADwcPSYINzkiazLjXEHHPRqjfO7W202Si1Qs+8YEDh
 jCEkMJxzSDeP2cY/yK/cH6Vk0I8l7ylEgxMykGHVZ94l2/tu1YxSBkgvk8k+xnnv02tE
 KRZTpc+AP7iHWtwwko+1BrU0MhfK7ZWxzpjLFwSl2y5tAF0qWd2oNhK38LTFc+nx8ati
 KDR2FjXsLRQ8dyPzd4r9kw8MclS9VDdQxqqtZrw1kFbcH4Tv17GwLVIxsWCaacmMCn1c
 PrcMW0oMF840+pnnOPFsWevr8xbY9AaiPbWOgIezZvFselplTPr94EI/F2WsRApY2dC2
 KhKg==
X-Gm-Message-State: APjAAAVCuX8JZb3j4OJSqfPuJ7qe4JiFZ50VsSjidCNDGe6e+APfAVo2
 A5M4FbAMhj9daRLULcBtHWSywWKyzYGniOUA55TBpQ==
X-Google-Smtp-Source: APXvYqxf0aTaNg6jos1sXXk3MRGw+VG9568dVQ+si312PfqcgtCWWsn+r7fu1fKckGvjnwTELqMIlISTXX1wKJomthg=
X-Received: by 2002:ab0:5922:: with SMTP id n31mr787069uad.103.1565060498254; 
 Mon, 05 Aug 2019 20:01:38 -0700 (PDT)
MIME-Version: 1.0
References: <20190805055844.GE4292@andestech.com>
 <20190806013723.GA5417@andestech.com>
 <alpine.DEB.2.21.9999.1908051911290.13971@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908051911290.13971@viisi.sifive.com>
From: Jim Wilson <jimw@sifive.com>
Date: Mon, 5 Aug 2019 20:01:27 -0700
Message-ID: <CAFyWVaYd1vGFLJj6hh+a5Ufubh3tvwER+-ShQXA3faEJbEFe3A@mail.gmail.com>
Subject: Re: About __udivdi3
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_200141_337797_70835E53 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:930 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Eric Lin <tesheng@andestech.com>, dslin1010@gmail.com,
 alankao@andestech.com, Palmer Dabbelt <palmer@sifive.com>, rick@andestech.com,
 kclin@andestech.com, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Aug 5, 2019 at 7:13 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > > It seems __udivdi3 only supports 64-bit platform.
> > > Do you have any comments? Thanks.
>
> It sounds like you're describing a potential issue with gcc, rather than
> the kernel.  If that's so, then the gcc mailing list(s) would be a better
> place to discuss this:  https://gcc.gnu.org/lists.html

The kernel doesn't link with libgcc.a.  It has its own copy of udivdi3
when needed.

Jim

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
