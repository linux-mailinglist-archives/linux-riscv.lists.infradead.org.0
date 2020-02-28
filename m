Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0468C1741E9
	for <lists+linux-riscv@lfdr.de>; Fri, 28 Feb 2020 23:20:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oupcBBMzkVkZ/IoOMguzUGYed0hV634MFJNr2ddg34I=; b=Oyl4ISprq0/qQ1
	SRMxO2cdJ8sh5K2d/Cqf4WPawmgHIR2xNMdEPIurnZbwpU4eFzta17eBlRiO1vFsETEnaUaCouz0A
	aV45pGtNCQ+BiXc5+4jG8u9TdIqn5hOaUOe6B1dzcLX0S656SgOVSK/IQpZTtGvJRU7WsJa2pFhtL
	6iBKUmkSed+vAhJPIYv2AmN3tD+S3fsScXOsD6NZY3ATEOwJFlNc1BLOeXPhYpGoerDfPGInr2dX4
	NqiiTiQBATZ8SQ9xI+82+C8AyPv+nVywtxRJv7M7oNgBJOFtzNkE7sgFqAVGvgJsNEZ4JqdGQ5las
	gI7mpfu7xDt5IWioQqUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7nzk-00059t-7u; Fri, 28 Feb 2020 22:20:32 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7nzg-000595-KF
 for linux-riscv@lists.infradead.org; Fri, 28 Feb 2020 22:20:29 +0000
Received: by mail-io1-xd43.google.com with SMTP id z190so5234646iof.1
 for <linux-riscv@lists.infradead.org>; Fri, 28 Feb 2020 14:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cs.washington.edu; s=goo201206;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=oupcBBMzkVkZ/IoOMguzUGYed0hV634MFJNr2ddg34I=;
 b=ZepahZwIUeF3xf2pSgqJtC+C8FNfJcpunG9ymLMAOgpy/DumhVN1QFSRYjquUNkYPG
 VWiL/PQPCcKK/I5We1TfbQpN9B4IX1fTqUWAljn7CWQefOiGcSUpRct4y/FkjGsHtGoW
 B2OkpiVEi4Z69fyjPREGb2YNKfDXZePcAtPy0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=oupcBBMzkVkZ/IoOMguzUGYed0hV634MFJNr2ddg34I=;
 b=OfEVGxegqS1UbNCGREcUww2yTobbMlvnPSWUmZXsislYY+8WmQNYN21mtAr6EVwYOS
 x64z1vT9zA8qu+r67XzjOqgbjeqmqbgyWJiVtI22WP4aPeHhLg1moiczK7yvmKC4U3+Y
 X3WTT7jbkywDzXwBL7sRDk/6ML7dj3aaN1AfbIBH+qVM+7TNq5gXrOLGOyS3HdPmwnfE
 s7VHZ6bLELrZ46dsG3Rov5g2WsNIZ1rKwxMdp95iQk43nMDI0/z++wrG89mZ8KiWyJyg
 HsnPV8Q2KLJgOT3cDHNwfVdpsrWkKGc+QuBIOWitWUD7H+EBpIFkj/H3yyvRtIXs6ELA
 4n2Q==
X-Gm-Message-State: APjAAAV9hsR6wc+NETQlQFckKZ1fo0Ikj//mFxG3EKwQi7afKBtfMeub
 94rGrxqUo/nTJHSxylPcsKp0zcShrM1dBqzeP6+WvlxPBvOIWw==
X-Google-Smtp-Source: APXvYqzUA63UJ/ZftjR3xpzQk6KLVrxHNtqrOc2EL/UgVChIcEyqw1voIGCsw/vz/kUAbG6Uz78EKhPVsnvIyCSy6ko=
X-Received: by 2002:a6b:fb02:: with SMTP id h2mr5156666iog.126.1582928422602; 
 Fri, 28 Feb 2020 14:20:22 -0800 (PST)
MIME-Version: 1.0
References: <20200220041608.30289-1-lukenels@cs.washington.edu>
 <CAJ+HfNiOoLWpQAPhKL6cUVTZ0vTwuSabZzypzAmbRThD3ChGzA@mail.gmail.com>
In-Reply-To: <CAJ+HfNiOoLWpQAPhKL6cUVTZ0vTwuSabZzypzAmbRThD3ChGzA@mail.gmail.com>
From: Luke Nelson <lukenels@cs.washington.edu>
Date: Fri, 28 Feb 2020 14:20:11 -0800
Message-ID: <CADasFoAB8PNRTQifs6-dapGWY=0J2usYNCYqg5g--jYG37rybQ@mail.gmail.com>
Subject: Re: [PATCH v3 bpf-next] RV32G eBPF JIT
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_142028_666067_696B9E3D 
X-CRM114-Status: GOOD (  16.77  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Song Liu <songliubraving@fb.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Borkmann <daniel@iogearbox.net>, Jiong Wang <jiong.wang@netronome.com>,
 Netdev <netdev@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 linux-riscv@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Yonghong Song <yhs@fb.com>, bpf <bpf@vger.kernel.org>,
 Andrii Nakryiko <andriin@fb.com>, Martin KaFai Lau <kafai@fb.com>,
 Xi Wang <xi.wang@gmail.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Feb 28, 2020 at 6:25 AM Bj=C3=B6rn T=C3=B6pel <bjorn.topel@gmail.co=
m> wrote:
>
> Luke/Xi, apologies for the slow reponse. (All my RV work is done on
> non-payed time, so that's that. :-)) Very nice that you're still
> working on it!

No worries, thanks for reviewing!

> >
> > - ALU64 DIV/MOD: Requires loops to implement on 32-bit hardware.
>
> Even though it requires loops, JIT support would be nice. OTOH, arm
> doesn't support that either...

We could probably implement this by calling into a helper function
for BPF_ALU64 | BPF_DIV/BPF_MOD, but none of the other JITs (e.g.,
arm,x86) for 32-bit architectures do this. We could add support to
rv32 and other architectures in a future patch.

> > - BPF_XADD | BPF_DW: Requires either an 8-byte atomic instruction
> >   in the target (which doesn't exist in RV32), or acqusition of
> >   locks in generated code.
> >
>
> Any ideas how this could be addressed for RV32G?

I don't believe there is a simple way to correctly implement BPF_XADD
| BPF_DW without hardware support for 64-bit atomic operations,
like for other 32-bit JITs.

> In general I agree with Song; It would be good if the 64/32 bit
> variants would share more code. RISC-V 64/32 *are* very similar, and
> we should be able to benefit from that codewise.
>
> Pull out all functions are that common -- most of the emit_*, the
> parts of the registers, the branch relaxation, and context
> structs. Hopefully, the acutal RV32/64 specfic parts will be pretty
> small.

Thanks for the suggestion. I'll factor out the common functionality
into a header for the next revision.

> Finally; There are some checkpatch issues: run 'checkpatch.pl --strict'.
> [...]

I'll fix the rest of the issues you found in the next revision.

> Thanks for the hard work! I'll take it for a spin, with help from the
> guide above, this weekend!

Thanks again!
- Luke

