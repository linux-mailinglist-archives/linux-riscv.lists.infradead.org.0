Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 922BC13241A
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 11:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v9o63yWZgkgdSqghjfIhGgS/KdbPOOBvJuoX59hXFcg=; b=XYdh5WEWHECtzGe7A+ku1F+rp
	dOsiWLWt7vP0uBVuIaxspVFt5YPfju2gj4TfoyCtwP2zGz8EOv9srhzhZAxOWjU9IEnjJ6tS6TXX4
	olBBIxJMF4iaNw1Js1hV3SE105wVjAh/NSK2iMb+wavHyyHRGQHfD1vlJ2JjTa6QzEwQa2nwQ8dwN
	YGiPTRD+FWqFN0FLIBUVF2PcqNKMjbsIyd2tx7T1u7yJuNXmUsMKkGyK8mZ25ojtzHA9t+EqMvoK6
	e1mpfxrnXHsvY2gZrlYLeIIVUFvLIAWEM6TNy2/FnEiMi86+MmJNqoJJ/LzPn+ZKvn9x0S2QMEVkv
	O0WfCEuIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomOo-0002OR-G9; Tue, 07 Jan 2020 10:47:46 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomOk-0002O2-TZ
 for linux-riscv@lists.infradead.org; Tue, 07 Jan 2020 10:47:44 +0000
Received: by mail-il1-x141.google.com with SMTP id g12so45366799ild.2
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 02:47:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=v9o63yWZgkgdSqghjfIhGgS/KdbPOOBvJuoX59hXFcg=;
 b=aX2bnmlWN9plSqAoINXMqsgVHWNef1GkvlzA0IV7hHx0JF8uycYnbE4r5o1B6GrZjr
 I4j9RRmxRQBHcewEnVIo+eMa1dbHawpkUnHCCYskwAj4GgRvicLYP7aYimgpB+mmNrOx
 sIujYzd2mEaOJnYEXEOuwOW4p7UrqS/OrWfzWvgFc0LPKvjIGNjHljnkZpNd35CV12Ey
 KP1rOcYBKCsuyVizHxpNFPL9jnad949cgMnGJ/gIFe1eQcCrJOyQkX5+IldFaA55hu37
 ehG3oklaxhTNyyhdKLhI6POXc/My9hI/EuHUsSEllLccPmEr5DdA0GDUoLhxJosunPRa
 GSfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=v9o63yWZgkgdSqghjfIhGgS/KdbPOOBvJuoX59hXFcg=;
 b=Ndu3EROQHasnmeak7HAv23hrAGccQdEI/AK85IKcuWH31jHh9Mrv84LwTMeTKE+8FO
 IyS5V9clQzFz43FF0w+5fVB9lw6M5Lo93qxxw09O/zpXmc/ksrZdVldbEX7Do5GS2N6c
 VI8UQbei85zahoWNANdFIbtmreE8cdjYC8Unjx+714hE5Bk6eErS72NTEngG1O3uofV9
 mguV/j9cQSz3OwaCAXJeJAoB8QErfgF+AtaSy3pDgSnYYkbXS5//lLPFXHAD4fWvMbuD
 CiKTFzE+3zVnbDWUFdNzVXNsPI05qd0jzSUbXikwlM6MVMSHn3okCaueteTl6VOxIuyw
 veMw==
X-Gm-Message-State: APjAAAWQ78ibPX9XtKLW4OjK2Fk7DdkW1auZsdVwJ4TmWTetWgQTT+Mj
 LOjpRpCUNKuIFc7xIBKvze/CJQ==
X-Google-Smtp-Source: APXvYqyxCOxBpeNyqV1KRHHkYJIOm33zBzLtBlGF3pl+3N/mseE+EV2DexXOcKQXfTO5bMjTAcPFKw==
X-Received: by 2002:a92:4818:: with SMTP id v24mr82585142ila.96.1578394061469; 
 Tue, 07 Jan 2020 02:47:41 -0800 (PST)
Received: from localhost (67-0-46-172.albq.qwest.net. [67.0.46.172])
 by smtp.gmail.com with ESMTPSA id z17sm2493899ior.22.2020.01.07.02.47.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 02:47:40 -0800 (PST)
Date: Tue, 7 Jan 2020 02:47:39 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: =?ISO-8859-15?Q?Bj=F6rn_T=F6pel?= <bjorn.topel@gmail.com>
Subject: Re: [PATCH bpf-next v2 6/9] riscv, bpf: provide RISC-V specific JIT
 image alloc/free
In-Reply-To: <CAJ+HfNgrekRMM_XS1eK_Cn77BNEgs2gxEsTEvxDpKH9M4R7TJQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.2001070243310.75790@viisi.sifive.com>
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-7-bjorn.topel@gmail.com>
 <7ceab77a-92e7-6415-3045-3e16876d4ef8@iogearbox.net>
 <CAJ+HfNgmcjLniyG0oj7OE60=NASfskVzP_bgX_JXp+SLczmyOQ@mail.gmail.com>
 <alpine.DEB.2.21.9999.2001031730370.283180@viisi.sifive.com>
 <CAJ+HfNgrekRMM_XS1eK_Cn77BNEgs2gxEsTEvxDpKH9M4R7TJQ@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-531874526-1578394059=:75790"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_024743_088298_9FB14E0A 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Daniel Borkmann <daniel@iogearbox.net>,
 Netdev <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-531874526-1578394059=:75790
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Tue, 7 Jan 2020, Bj=C3=B6rn T=C3=B6pel wrote:

> On Sat, 4 Jan 2020 at 02:32, Paul Walmsley <paul.walmsley@sifive.com> wro=
te:
>
> > Looks like Palmer's already reviewed it.  One additional request: could
> > you update the VM layout debugging messages in arch/riscv/mm/init.c to
> > include this new area?
>=20
> Sure, I'll send that as a follow-up!=20

Thanks.

> Related; Other archs, e.g. arm64, has moved away from dumping the VM=20
> layout (commit 071929dbdd86 ("arm64: Stop printing the virtual memory=20
> layout")), and instead rely on _PTDUMP. Going forward that probably=20
> applies to riscv as well!

For the specific case of the page table dumper: we're waiting for the=20
generic ptdump patchset to be merged first - hopefully for v5.6.  The=20
RISC-V integration patches against it were posted to the lists back in=20
October.  But, to me, that targets a different use-case than the VM layout=
=20
debug print code.


- Paul
--8323329-531874526-1578394059=:75790--

