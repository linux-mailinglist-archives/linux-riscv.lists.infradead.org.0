Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF081C69CC
	for <lists+linux-riscv@lfdr.de>; Wed,  6 May 2020 09:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i1McQv5JxS+S3dpHPfoR+SRFx7AO1GcGwXm3Mh9ZmIw=; b=p4G8+nycYkvU7J
	DMqtAdPKogo3sEySSm/ih+WQLFAYDS2hUyedq1E+hLgVQE7gp5ylEqpPbv03wA4cZhUbyWLVFO0vj
	DruTr2NJYgdeXIKVA6KHdnEMEYqhUWM695ev7KghhzekCa+hVHGQfeQfAlZXlHukR7RAt4oa1FXKx
	fgX0/ya/hQHy1PMbTcHfAt5Z71J3omQGIdI9GOkDJnyNqsVw99LeYreq0u3hS/6pmOlV1YsXBuA6f
	xalD/rR6W5/ANZmbXK5s1oZ0LpXGRB8AkzWVmHgnOsHtmXHumBopyDeMCCr0HhywLK0WKsQefl/UV
	pmpQ0y8G5zhBBZuClYow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEAa-0008Ot-8X; Wed, 06 May 2020 07:08:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEAX-0008Mu-3f
 for linux-riscv@lists.infradead.org; Wed, 06 May 2020 07:08:38 +0000
Received: by mail-wm1-x343.google.com with SMTP id x4so1309360wmj.1
 for <linux-riscv@lists.infradead.org>; Wed, 06 May 2020 00:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=i1McQv5JxS+S3dpHPfoR+SRFx7AO1GcGwXm3Mh9ZmIw=;
 b=FLnYnHqJH1U3gU09Sqx/ZBdsyli2VND4iZgspbc9VISSBTT3y17lgp5dXe4LxMa81+
 md7sot+kcTyCqcu6EeTMAt+0L0RSrhzzaZ4jQgttSiZnI/geHJzSEYoGJCsyx/LFb+7l
 7eTHJKjUzfChc54f6iBO9xmmVE6VudIAtGAgwdD24JErTkCb8gUWQrfj6rViGZ2T4h9I
 74bqVkmvA4qIHe9VW30CK3fvIsnh0d3FkTw0PPEuMwxasv3hi0HwiZClysYya7VZ23ym
 0edoLm+0RDqUPgNpZCzrnY08bARddy+4zf3/0ZYjSQE1lklzrXFIUpfRPOxCipSizBvL
 WpjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=i1McQv5JxS+S3dpHPfoR+SRFx7AO1GcGwXm3Mh9ZmIw=;
 b=V+FXxBp2oOTWkwvo3EU5L29tlBoBHjs0JTMWjGzRfOWhBQlJm1JGyktOup8xP3Y9Uo
 zkJ4NXj9fD3xs1GQ2ess3BBhnbvrZRga/Ly7gLPGPnINP3vt5v4XXs0BPQ6Ua8FO1nWq
 I23eJIhLD18m4J6DBQ0mufXnvrtScBxRi1x5umaDvXe0OpbH9YDN6ThtwgpzQ/FDVtJ6
 WX+UgAdX9kPF3iSMIwrh8xedVKNIqM/qymj97rbjzYFgjqHuRSw1kWYOdSypo4F6MiDu
 zKprmJFDqGiWYftLz9GDqrTK+8X0xBkoj+4bplQEAK/PJlkhpxzD1+mgrsOIdpPIKU4C
 wzYg==
X-Gm-Message-State: AGi0Pua03PzgXDZPtGu8bWNKtz+vE6dGstxg4RuLGDNLXVrEzfRVpNFT
 KunjLJcsOPrAJH0fSL+PVKaavTqHZ31sa4s1W7k=
X-Google-Smtp-Source: APiQypLonxc2SJgZ3t+ABye4ETFW+KuYGgzgoiH27uLerIQZ3u+pO2iInq911uZepzHOpZi9JGpmgKNSZrBBZK/DNrc=
X-Received: by 2002:a1c:6787:: with SMTP id b129mr2820878wmc.165.1588748912923; 
 Wed, 06 May 2020 00:08:32 -0700 (PDT)
MIME-Version: 1.0
References: <20200506000320.28965-1-luke.r.nels@gmail.com>
In-Reply-To: <20200506000320.28965-1-luke.r.nels@gmail.com>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Wed, 6 May 2020 09:08:21 +0200
Message-ID: <CAJ+HfNgbuBoMTrU+TM3JCd1stEM1Zi3hG5k=PazT=CxAWa4wBQ@mail.gmail.com>
Subject: Re: [PATCH bpf-next 0/4] RV64 BPF JIT Optimizations
To: Luke Nelson <lukenels@cs.washington.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_000837_153398_DA7C713B 
X-CRM114-Status: UNSURE (   9.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Borkmann <daniel@iogearbox.net>, Luke Nelson <luke.r.nels@gmail.com>,
 Netdev <netdev@vger.kernel.org>, John Fastabend <john.fastabend@gmail.com>,
 Alexei Starovoitov <ast@kernel.org>, linux-riscv@lists.infradead.org,
 LKML <linux-kernel@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, KP Singh <kpsingh@chromium.org>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 6 May 2020 at 02:03, Luke Nelson <lukenels@cs.washington.edu> wrote=
:
>
> This patch series introduces a set of optimizations to the BPF JIT
> on RV64. The optimizations are related to the verifier zero-extension
> optimization and BPF_JMP BPF_K.
>
> We tested the optimizations on a QEMU riscv64 virt machine, using
> lib/test_bpf and test_verifier, and formally verified their correctness
> using Serval.
>

Luke and Xi,

Thanks a lot for working on this! Very nice series!

For the series:
Reviewed-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>
Acked-by: Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.com>

> Luke Nelson (4):
>   bpf, riscv: Enable missing verifier_zext optimizations on RV64
>   bpf, riscv: Optimize FROM_LE using verifier_zext on RV64
>   bpf, riscv: Optimize BPF_JMP BPF_K when imm =3D=3D 0 on RV64
>   bpf, riscv: Optimize BPF_JSET BPF_K using andi on RV64
>
>  arch/riscv/net/bpf_jit_comp64.c | 64 ++++++++++++++++++++++-----------
>  1 file changed, 44 insertions(+), 20 deletions(-)
>
> Cc: Xi Wang <xi.wang@gmail.com>
>
> --
> 2.17.1
>

