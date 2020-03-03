Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCFCA177016
	for <lists+linux-riscv@lfdr.de>; Tue,  3 Mar 2020 08:27:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EPMkUwZp6KV2zQtOQ/HDG4J9jIuHDQrBU740Rw3sZEw=; b=aEVr7FVzMacPlz
	QsR2kNW2Ep0vgpHpuZUqHIcwqCcKCEVl8RxViG5OI4hVEM5BeRIkoV6ZbeLLV45Nxy2aVYVXy/+bc
	HdcUJJYifDwziVX1Ow4sYJkXhVebsV+KWzpNLM6KLrR7/xkP5WYCFhRnPeEDk2IgvpL7i69V+M941
	wGomOJYHUb+9lXl6x6/i54hACnvkbvp87cjBKyIsPsHn4suzDSHpDraDhU05bjqEzP1CMEvSxHGW0
	UoFyhQr7fuNrk4bOx6Bz01B2aqB0KV2mk174YC01cYfHRcHXeP6D/OZYMhYsdzvGnMnkD09hoyac6
	3KmUxI/GCfHuP0wDOqkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j91xy-0002yK-MQ; Tue, 03 Mar 2020 07:27:46 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j91xv-0002xe-N0
 for linux-riscv@lists.infradead.org; Tue, 03 Mar 2020 07:27:45 +0000
Received: by mail-qk1-x743.google.com with SMTP id p62so2476365qkb.0
 for <linux-riscv@lists.infradead.org>; Mon, 02 Mar 2020 23:27:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=EPMkUwZp6KV2zQtOQ/HDG4J9jIuHDQrBU740Rw3sZEw=;
 b=rvJ+YaWGiQIUHJTTbjQXHsU+qz27tkISaqJdwTMGHwOpQ6XBcywdlcljo9qFTxSUUF
 T57+8xyeBd1i9PX1cxoEWcpWNwf3wEzuOqAggFO/kU28QptTCfI22G1SmtpxN+zIBE84
 ts6a7JvevtVNF39MVqhgWJXxOZQ74GsfIzIlS6C2ZxWs1MxbhAoRuCPFFNCUwixaUd5W
 3ywUkrmMrk1XC5WJ1q2JUNOElGJX1h8Tz0yYJcvX4/ofdz13/hTPOEPq4FT99t01wsUr
 AtQl1ET64hv4hGwZpom4H35P23kLU+YJsfG/lWK14+6nbVbvMl6fc/coHBqtW8QUKzcy
 R6HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=EPMkUwZp6KV2zQtOQ/HDG4J9jIuHDQrBU740Rw3sZEw=;
 b=aeXW+gCXOT+AMtDFLPmp8aw8owfvmq54Ss7eFKd1oNFUn19GYvpsqAqvfZknZuVopt
 yp6Z1LoL0gla5h76vvf5HYIYJhcvXay7vzwZvDdSRTHLTDH9oADEC5R9qY3yX2fiDKAD
 EcVR+PI9sp3wvhnhnnM7fdtoawdP9ItI1u+YPnfmSp/NcZR8uXawDFV9n4vqpj7qZomp
 hgCmRpAxgq74EuySst+WoxyxE6X/2o1bgiwg9ymJbfC4h/fyd+PBu17WpaTMQXI/f70u
 MsWvlJRF36wknextkFSOFxiAavoT2XlF5zq7di/5l4Oy98oVDXitLbwXMflny88wxlat
 /aHw==
X-Gm-Message-State: ANhLgQ0Ol9D0b7tEhP96TH15yvvaHB46RUnlToL5zdQi+Bp0m3b46AUP
 gumU0ZnuA+m0/T5t243UjMBlDw4DmcSRvBolZ+A=
X-Google-Smtp-Source: ADFU+vtPLeYYw40rLd76IFgdK//etfwn2dnKzi5huN2O0NR+iLdTt9fmsfVhcO38RDt6XnlZ/2hvsaA3mKubpSUXX44=
X-Received: by 2002:a05:620a:1210:: with SMTP id
 u16mr2857096qkj.493.1583220461898; 
 Mon, 02 Mar 2020 23:27:41 -0800 (PST)
MIME-Version: 1.0
References: <20200303005035.13814-1-luke.r.nels@gmail.com>
 <20200303005035.13814-4-luke.r.nels@gmail.com>
In-Reply-To: <20200303005035.13814-4-luke.r.nels@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Tue, 3 Mar 2020 08:27:30 +0100
Message-ID: <CAJ+HfNhQaW8V6qiSf3XO0f7hMViEUsYFyyctKYVm1QEB20-N6Q@mail.gmail.com>
Subject: Re: [PATCH bpf-next v4 3/4] bpf,
 doc: add BPF JIT for RV32G to BPF documentation
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_232743_781428_986100F6 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
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
> Update filter.txt and admin-guide to mention the BPF JIT for RV32G.
>
> Co-developed-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Xi Wang <xi.wang@gmail.com>
> Signed-off-by: Luke Nelson <luke.r.nels@gmail.com>

Acked-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>

> ---
>  Documentation/admin-guide/sysctl/net.rst | 3 ++-
>  Documentation/networking/filter.txt      | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/Documentation/admin-guide/sysctl/net.rst b/Documentation/adm=
in-guide/sysctl/net.rst
> index 287b98708a40..e043c9213388 100644
> --- a/Documentation/admin-guide/sysctl/net.rst
> +++ b/Documentation/admin-guide/sysctl/net.rst
> @@ -67,7 +67,8 @@ two flavors of JITs, the newer eBPF JIT currently suppo=
rted on:
>    - sparc64
>    - mips64
>    - s390x
> -  - riscv
> +  - riscv64
> +  - riscv32
>
>  And the older cBPF JIT supported on the following archs:
>
> diff --git a/Documentation/networking/filter.txt b/Documentation/networki=
ng/filter.txt
> index c4a328f2d57a..2f0f8b17dade 100644
> --- a/Documentation/networking/filter.txt
> +++ b/Documentation/networking/filter.txt
> @@ -606,7 +606,7 @@ before a conversion to the new layout is being done b=
ehind the scenes!
>
>  Currently, the classic BPF format is being used for JITing on most
>  32-bit architectures, whereas x86-64, aarch64, s390x, powerpc64,
> -sparc64, arm32, riscv (RV64G) perform JIT compilation from eBPF
> +sparc64, arm32, riscv64, riscv32 perform JIT compilation from eBPF
>  instruction set.
>
>  Some core changes of the new internal format:

