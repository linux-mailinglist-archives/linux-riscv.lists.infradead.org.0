Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B13E21505E7
	for <lists+linux-riscv@lfdr.de>; Mon,  3 Feb 2020 13:11:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJ4qdO8JQggLc2fWQs+boqL64SksK4OFYeVmitKgQE4=; b=HjP/YxjGq3HC6i
	IYbVMYneTT7s2ppoIBUngFprS3Ue4VF4LJwwyDUgwNXEFgeX5hF4RTvnNXZofqe9wRK9O4KCqq1hA
	wFQ5W/pqbrABCR/RPTxIk0x8CR2Uyiw39QkYpg7pIgiI1oaiMps+z3kg5eMis/u4WqAWcKYtRDWrg
	tlkTXx9FCf6KwQfiV5ak9zYE2+bdBMtQLdwIcf26/typkwBcY1vDTQ2CQb1bw1j4uIVfAX9IdB8Zd
	pnbFSjffyQzWOc8lyV6o9hOsXb/avMBtLRGw7cw/ZTvaqnQ3BUmvawDlgBq3jrFH15UCa39/RWlj0
	1/1AmCjz8xsenfXXjC0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyaZx-0001XM-6J; Mon, 03 Feb 2020 12:11:49 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyaZt-0001Wq-U8
 for linux-riscv@lists.infradead.org; Mon, 03 Feb 2020 12:11:47 +0000
Received: by mail-qk1-x742.google.com with SMTP id 21so13929648qky.4
 for <linux-riscv@lists.infradead.org>; Mon, 03 Feb 2020 04:11:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=PJ4qdO8JQggLc2fWQs+boqL64SksK4OFYeVmitKgQE4=;
 b=Bxb38YHIJX1vfVH2RKNljqr7dyt5Q/ki6AeGgnHvJ7uOngxB49ry89IdWx1kdg90B0
 GUL7iyKw5dK8qSyARFnm5WazGUbUNcL+RhZjW0PLt33AoYRIAbPMNUNVk2EFECzaSse6
 cs3zlPKhSYicpauAlaPnppQMfZGJI027iWqF+fbMnQyH49WfkGYrINVJ7VW0IlNpqwiS
 rirxMWUGsjIJT7hU3jM/KK/bGr+1LyPgcWyOhSNqpFYjKOeK4Env3C9EwHyDzVZn+RE+
 3LuENlU84kdtV3wbj7hTI6F0ndsbWJlLCkOz4C91+6usbO0dszlufk/rWNoscdOoliE7
 Jf9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=PJ4qdO8JQggLc2fWQs+boqL64SksK4OFYeVmitKgQE4=;
 b=kZIPa8cflLylggSJduQ6xxGANGUwPsO+JfrGi/CClhQ8FS+WOwI8OXAgazvxKquYqX
 LLyfNItMj1eFFiEEoqSws2+QzaRJwFI0N4vuik+Iz48IHCO5rfuyEeqDXDv/KSZK2lhE
 7hDhSO6azmzGCAXIiEeadZa6BT3Nj4JTU9M+wnxpuyOE7ArYyIRfJ8y8Lvrt3Wgjc975
 zcBtZFAuqaMUYz5GlBRyVpgBVDPb1YqN9Mrfjywo5S9Q1zgzHP93SxcfV4gbZdwiHzPT
 MInsPNvHcfp/lmOQFOlW4vI32QzfCN08f2UloSO6OTRL3KitPo+9sbhgiB7QNIZ4m6oS
 oSzA==
X-Gm-Message-State: APjAAAX6jiWp1eXCi/Ik8PxuRSyf6N1C46BDrQrPMkFjXp3B1hf547kZ
 g5K/EBudBANpMbyM8Tn/zPHVmBxN0ClpIng6wQ0=
X-Google-Smtp-Source: APXvYqwe9Us2PgVu6MqeMNAO664AzntNtBV6pxz6hiw73jiD8G4iW8o+aobGl1EqwZofyiZhblcjvbiNbuP9RfonqcM=
X-Received: by 2002:a37:9c0f:: with SMTP id f15mr23348389qke.297.1580731903294; 
 Mon, 03 Feb 2020 04:11:43 -0800 (PST)
MIME-Version: 1.0
References: <20191216091343.23260-1-bjorn.topel@gmail.com>
 <20191216091343.23260-8-bjorn.topel@gmail.com>
 <mhng-041b1051-f9ac-4cd8-95bf-731bb1bfbdb8@palmerdabbelt-glaptop>
 <CAJ+HfNhvTdsBq_tmKNcxVdS=nro=jwL5yLxnyDXO02Vai+5YNg@mail.gmail.com>
 <mhng-a006210f-8a00-42c3-b93d-135144220411@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-a006210f-8a00-42c3-b93d-135144220411@palmerdabbelt-glaptop1>
From: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn.topel@gmail.com>
Date: Mon, 3 Feb 2020 13:11:32 +0100
Message-ID: <CAJ+HfNit8dsXV360qUCiG33yNdbf7=w58M9DncOuNqNOCAE40A@mail.gmail.com>
Subject: Re: [PATCH bpf-next v2 7/9] riscv, bpf: optimize calls
To: Palmer Dabbelt <palmerdabbelt@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_041145_995825_03A8FA1B 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bjorn.topel[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Netdev <netdev@vger.kernel.org>, linux-riscv@lists.infradead.org,
 bpf <bpf@vger.kernel.org>, Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020 at 03:15, Palmer Dabbelt <palmerdabbelt@google.com> wro=
te:
>
[...]
> >
> > BPF passes arguments in R1, R2, ..., and return value in R0. Given
> > that a0 plays the role of R1 and R0, how can we avoid the register
> > juggling (without complicating the JIT too much)? It would be nice
> > though... and ARM64 has the same concern AFAIK.
>
> Oh, why did you say that?  This kind of stuff is why I'm twenty days behi=
nd on
> email...
>
> https://lore.kernel.org/bpf/20200128021145.36774-1-palmerdabbelt@google.c=
om/T/#t
>
> :)
>

(back from vacation)

:-D Very nice, I'll take a look!


Bj=C3=B6rn

