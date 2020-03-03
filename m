Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED7C176EF9
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 06:51:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iLzATktCHrodymTRFz9+R7sYgPZp2WR4t6sVmb9CoD8=; b=Z2y6IUamXvD/dK
	C7pNPYMc4ClHmXB4+kjoYuMQqyYiQnTkXUbd24JEyD7DkUHN//TIcF85WTcskESTEI4Ov5+1rgiAC
	ilQef3i9qgT4cIbkSNHTo3k7JRzzVze2L3qo/D4cxu7ppdY2nRX/N5vCpEvwKabpiN48y5+sZUNkP
	9Vn4k9TTqc6QS4Se8hp80BPSvlM7Fn0VigOdfBRO47TJ2lIcCGi91cramMeyC+cGyq4LJCP8REiQV
	SP73/B9nskcC9Fob6OsMxCcQZ8zWdPPDF2cpQoNZe+Ui37jaYPpCPrgZheVhurqCjRNjnWsW/kRu4
	9zrlA2+Fsx2iATtM7oLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90TA-0006vt-FE; Tue, 03 Mar 2020 05:51:52 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90T6-0006vK-OV
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 05:51:50 +0000
Received: by mail-qk1-x741.google.com with SMTP id 145so2308028qkl.2
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 21:51:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=iLzATktCHrodymTRFz9+R7sYgPZp2WR4t6sVmb9CoD8=;
 b=Y2/8tjTwomcDfnQI4CrB9vsGgA7c+4gX+IPFpd6xie0Z+y05cpijap953GnF9rFdDE
 SC5lG7GF2G3PVsUtRjKkdoT/Ze/PUnTEq3Fp0SuRLCRlY2D75jheQ6UZimcFGlnljq0J
 /VFoBpOQm3TpF8oQg/HORVe6NM0jM5iMz7EYDxfXEozYsByK2Uib08tkiok/TiR3OsGC
 dBUYXF0m9aqi6VjdIEpJ0JBTvBHO4+L5xE+wPyR7Wy2DlqAPHui9X6mrLwCT6gmE1GAC
 uCGgoI83igJ6k60HRp1HdkQhyymY2TlMabb+xNGmW2INVOSI7/W97Q3fP0Xkr4s6tA/d
 2d6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=iLzATktCHrodymTRFz9+R7sYgPZp2WR4t6sVmb9CoD8=;
 b=N32/ElKcG3oUWBUgq2De6MRqCiH7MqwnzYYwYsbQT5ffCxgG+UfvnJ6KLmZ5XK/cht
 Mk4cIFRQHsX0+4TRSP8PUQ0zBTcI+DisOXFOFrYonaxmb6vX1HzYHrHYyMaygeOVKWSp
 1kv8CRMMLJJU8sUxsnKsrW/rufDdWUUkgdlHJYYQDjcpoRfq2/NXstjzO7CtaFbJJIjv
 eZyhlMiwia1zSDIw+6kVY4hSyJmSRTCx01GQKWAi7vI/ZrF0S50Hlluju1oockQkTUye
 BokXaNisx6iL8psuutu6hG9Xi2voyL1GRGfD8YNYkcdkzQ8gPbAX1uupF6HAKpLzYjAl
 Uc0w==
X-Gm-Message-State: ANhLgQ1NG8zy51zb6ucs7wB8rn66cFSa5+mfBg3eMqYWtOktUgLjWY2R
 W7j9o7Pvpk3yPbBBKXG56DBLPSEetbU6TpHfd18=
X-Google-Smtp-Source: ADFU+vsAdJwHeWN+xr+Wfk3ncx3mNSNxdcg74ESWiG+tMxczIt6h5phl3xQyAyIyAR3X2SefIi3fSE5nmggLdi9ocbM=
X-Received: by 2002:a37:8046:: with SMTP id b67mr2625917qkd.218.1583214706980; 
 Mon, 02 Mar 2020 21:51:46 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-5-luke.r.nels@gmail.com>
In-Reply-To: <20200303005035.13814-5-luke.r.nels@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 3 Mar 2020 06:51:35 +0100
Message-ID: <CAJ+HfNhJJeEewW+Zj2gyH_fprvM25kWCMJP1kmA3Udpjj0MNYQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 4/4] MAINTAINERS: Add entry for RV32G BPF JIT
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_215148_825906_6DFCF497 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, linux-doc@vger.kernel.org,
 Yonghong Song <yhs@fb.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Alexei Starovoitov <ast@kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Jonathan Corbet <corbet@lwn.net>,
 Jakub Kicinski <kuba@kernel.org>, Andrii Nakryiko <andriin@fb.com>,
 Xi Wang <xi.wang@gmail.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Luke Nelson <luke.r.nels@gmail.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Stephen Hemminger <stephen@networkplumber.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Netdev <netdev@vger.kernel.org>,
 bpf <bpf@vger.kernel.org>, "David S. Miller" <davem@davemloft.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 3 Mar 2020 at 01:50, Luke Nelson <lukenels@cs.washington.edu> wrote=
:
>
> Cc: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>
> ---
>  MAINTAINERS | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8f27f40d22bb..fdd8b99f18db 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3213,11 +3213,20 @@ L:      bpf@vger.kernel.org
>  S:     Maintained
>  F:     arch/powerpc/net/
>
> -BPF JIT for RISC-V (RV64G)
> +BPF JIT for 32-bit RISC-V (RV32G)
> +M:     Luke Nelson <luke.r.nels@gmail.com>
> +M:     Xi Wang <xi.wang@gmail.com>
> +L:     bpf@vger.kernel.org
> +S:     Maintained
> +F:     arch/riscv/net/
> +X:     arch/riscv/net/bpf_jit_comp.c
> +
> +BPF JIT for 64-bit RISC-V (RV64G)
>  M:     Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
> -L:     netdev@vger.kernel.org
> +L:     bpf@vger.kernel.org
>  S:     Maintained
>  F:     arch/riscv/net/
> +X:     arch/riscv/net/bpf_jit_comp32.c
>

Empty commit message body, but maybe that's OK. The removal of netdev
list is following the new guidelines from commit e42da4c62abb
("docs/bpf: Update bpf development Q/A file").

Acked-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>

>  BPF JIT for S390
>  M:     Ilya Leoshkevich <iii@linux.ibm.com>
> --
> 2.20.1
>

