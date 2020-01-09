Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754561363F7
	for <lists+linux-riscv@lfdr.de>; Fri, 10 Jan 2020 00:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:References:
	In-Reply-To:To:Subject:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YoRMhkZec9G754MeMpA3qyugr+9dP1r59sqNei59Bxc=; b=Cz1GWGS3+/aCBH
	L3wnOrSAVyauEQyzvAq+DDmazyyCN0InMxYoWST6gKhS5ooy8z3sddbUcALMADe/PhBvHy9wMoFUI
	dQcji4tuM9gccbK4gua5DlsZl6YphQcYOxCYniHvSifhSCEX2utJr/dEVfdIUCRmNRmBF0VOOenPL
	Gl4s+3RG+yRm3a6EGuAzmBJhY+fPVp3VfcowTo9QcKMlCLoidMOHpUYytBldl+o2A4B5KVHdu6FhR
	wKJCYEheN8pE/2aQkD4lcRu0Uk9g2zXjgVE3z4ShVPa0pZO6WtMz6ptdVWlBinkChEcjX9a0haMPq
	33oNkNLG9dAEbiQxK7XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iphRi-00045t-8h; Thu, 09 Jan 2020 23:42:34 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iphRf-00044q-5e
 for linux-riscv@lists.infradead.org; Thu, 09 Jan 2020 23:42:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id p14so180405pfn.4
 for <linux-riscv@lists.infradead.org>; Thu, 09 Jan 2020 15:42:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:subject:cc:to:in-reply-to:references:message-id
 :mime-version:content-transfer-encoding;
 bh=YoRMhkZec9G754MeMpA3qyugr+9dP1r59sqNei59Bxc=;
 b=D35Tnx2qGOx5wYEODGub+OOGjjHIMqMro6ZmZhmjSXbAHjXU4M5d+fM8W0jNKs7+j2
 pjfHSASWvUBuPPbYqX1zPamNaz8n/fgfkW3ia4D0vunpEH3G+pn7KYoDTYQ/gG/mJmiI
 yvZhtWf9RkHB/m27NI/0O95YWzWaozyWygAmOBOOH9UhFnVVrTjxMRW8ZbQn1QaP3OEX
 rNaAhVf79aDKtq/2Xk6l1ta2KLUAW21SNVr+6upC4MdJCHtaXtPWLfl6yWgm8BV8UqeO
 loFErmafn0is/MVcTxKX6E3dgn4/Latu0qWQMrtB1090RsCxe1i3fPvJhggAfshogVe1
 3jtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:subject:cc:to:in-reply-to:references
 :message-id:mime-version:content-transfer-encoding;
 bh=YoRMhkZec9G754MeMpA3qyugr+9dP1r59sqNei59Bxc=;
 b=TdlZ/PJ9NFoCMePwVGeqR5XxdAKxKdIsyTX1rLecrI3TdbvpvVn3cTMeXwT1DR+T9t
 qmGhmdnN6bhSXbkWliLWJRZslQFjr9BlJAiTvvQgtvyS06oGo7Vzr035yOgttNVja1ec
 hRKhD+Y+MkEfOXeHo2nZm/3Z3CBUdHYUSRcTozFNlunXXHW7ApzkKqqTXUDcBkrYMdFt
 y1BCp1Zgdrd0EX7DkCdT4tXnzI4/U/eNWiWcmvPJxiLkE69gcEXe65IBAywM4HVM9X05
 9IYy7zaITMS4ObtLDtDYM8AQlzE7nTs5hvWH7csKe8ExEPcsqZ3IQYbN4ueRYNo3leg9
 VVIQ==
X-Gm-Message-State: APjAAAUnQgvsC/Fnn3RUtVdQy2HywqV2K3WQW/6f8QH8gk+hRAZpy0FY
 KgURJUyaiG3lWgBS6KvqqTUytWHrs0I=
X-Google-Smtp-Source: APXvYqymalA5zmwiQNv0P8QaSMt5qB4BiTihWTnSZaqORKmMdLg29qW7g8n0TfOd8rT3pRf6yvOpUg==
X-Received: by 2002:a65:5281:: with SMTP id y1mr575543pgp.327.1578613347669;
 Thu, 09 Jan 2020 15:42:27 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:7f69:cd98:a2a2:a03d])
 by smtp.gmail.com with ESMTPSA id o14sm38329pgm.67.2020.01.09.15.42.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 15:42:27 -0800 (PST)
Date: Thu, 09 Jan 2020 15:42:27 -0800 (PST)
X-Google-Original-Date: Thu, 09 Jan 2020 15:34:58 PST (-0800)
From: Palmer Dabbelt <palmerdabbelt@google.com>
X-Google-Original-From: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] RISC-V: Typo fixes in image header and documentation.
To: corbet@lwn.net
In-Reply-To: <20191210072947.7018340c@lwn.net>
References: <20191210072947.7018340c@lwn.net>
 <4912c007ab6c19321c8c988ae2328efbfb3e582d.camel@wdc.com>
 <mhng-3a815562-1222-4737-a77c-6dab9948db79@palmerdabbelt-glaptop>
Message-ID: <mhng-94b9cad5-0d14-480f-b428-8752630064d2@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_154231_216608_508DC57B 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: aou@eecs.berkeley.edu, mchehab+samsung@kernel.org,
 linux-doc@vger.kernel.org, palmer@sifive.com, linux-kernel@vger.kernel.org,
 Atish Patra <Atish.Patra@wdc.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 merker@debian.org, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 10 Dec 2019 06:29:47 PST (-0800), corbet@lwn.net wrote:
> On Thu, 05 Dec 2019 15:03:10 -0800 (PST)
> Palmer Dabbelt <palmerdabbelt@google.com> wrote:
>
>> Reviewed-by: Palmer Dabbelt <palmerdabbelt@google.com>
>>
>> I'm assuming this is not going in through the RISC-V tree as it mostly touches
>> Documentation/.
>
> I was assuming it was going through the risc-v tree since it touches arch
> code :)  I can go ahead and apply it.

I don't see this in 5.5-rc5.

>
> Thanks,
>
> jon

