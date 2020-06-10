Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B81F41F5695
	for <lists+linux-riscv@lfdr.de>; Wed, 10 Jun 2020 16:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jDzQUCHqj4/VutT+HVFOwWkG8Uh4SllFoScBijUwQp0=; b=tOjApZceLm47uf
	dXscCSrWaIhERWZ2pMrcGDWYtXYXoxgNVsBJKh5ytj2t/Kj9CLWurUxXfyTUl3SoAm3GdTgwGi1t/
	eISgJ2VBXofftcwPNUtVRi27BQlPfhmQYmiPqxUsVXHwzYVse/8M2iUxVXPNsth1Fis6L+IFIYxHw
	gct/bkCUrGt09d+PKkfl+5rQZDWe/P6m3zmHj+kZQKauLizber5NvRstb7KDCS56ppfjnEqU0KRXz
	k4Klf7xruNkdTRyMnmkuI21GuK7rdrOzYwRIw3VBAPaxwSOn27s6+5rBFj0HQlJXVulKn2szloTWD
	/0oEydYBLda0MExtvczA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj1R4-0005M9-OL; Wed, 10 Jun 2020 14:10:34 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj1Qz-0005Ld-7j
 for linux-riscv@lists.infradead.org; Wed, 10 Jun 2020 14:10:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id j10so2442421wrw.8
 for <linux-riscv@lists.infradead.org>; Wed, 10 Jun 2020 07:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=forissier-org.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=jDzQUCHqj4/VutT+HVFOwWkG8Uh4SllFoScBijUwQp0=;
 b=aIOxarc2FNcSmm/L8rU4tA90jHE+cz4t9kk7bpZtiaGSujg0xmMgMJBZOQOguIVse8
 5fwf59eWAX8VwcxLit4Fiq6/co0RMaLEiXbf3/NvfevHt89V9LKT8u2SMBaYKtT5zBDL
 ZenLzM2vCz5r2XgLVdx/jkzX5ZknqsPoX3IlA2uJ5B4spdDuXITgb18a8C7ewM0ZRAbt
 m2zCqTzHJR9g3c5U7LHRv2zpL+1wnCjZdNKuD8y2FDudOyomowKr6nPxnnq5m01ca4if
 lI8oqCmNOqsLrmEl58ICFzqmIxxePikNpipEUkrjd8S1lfZNAdFA57eAjun2I4cL63aE
 O8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=jDzQUCHqj4/VutT+HVFOwWkG8Uh4SllFoScBijUwQp0=;
 b=YdRIS3301JWqRKpT7iTnpYGgoejgHUA3THKJ/iCevKO9myKNb/YYtvaAwRato912fr
 rCQdXLC5bn90spiNuqnawYF3+aERb1Y8KcX5tJK4l9hZAqWwJhDMNA5SHlfbKaJGjrVO
 QIR0tnYaQkrTYOGHgWDANA8Ib0GiN9hxhJLRoDco+hh9wfYVKLyT0YnLS4pF9lECzxfm
 uqddipqsO7L1PkfuICHueIONFP8SwJmlMY9s7LO4GBP/h01MJnGtuiWGuPi85f1gO8tO
 ty3dDrHrG9uqDghYYnU5oyKI5g3ti3AbKwtvoOCI+UaIYO1AyMkQa1/jS7Q5Q3xN5WX1
 TAgA==
X-Gm-Message-State: AOAM532NyvrZS5sVeMlySZ79dSV5RlX7yPhmiX3BZK3/EX5Isexeblip
 0nlBOgTrIg51WLFgOBCCA2XF0Q==
X-Google-Smtp-Source: ABdhPJxATs3KuDuMWEAjMghq03E7YQc+yJOkKpJRvtozd+hszZ6Zi3/yMlvy5TQf/Hwpj1yxDx4NdQ==
X-Received: by 2002:a5d:6cc1:: with SMTP id c1mr4135678wrc.144.1591798227154; 
 Wed, 10 Jun 2020 07:10:27 -0700 (PDT)
Received: from ?IPv6:2a01:e0a:3cb:7bb0:c9f2:94f0:24f6:185d?
 ([2a01:e0a:3cb:7bb0:c9f2:94f0:24f6:185d])
 by smtp.gmail.com with ESMTPSA id b185sm7446792wmd.3.2020.06.10.07.10.25
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 07:10:26 -0700 (PDT)
Subject: Re: [PATCH v5 2/4] riscv: Introduce CONFIG_RELOCATABLE
To: Alexandre Ghiti <alex@ghiti.fr>, Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Anup Patel <Anup.Patel@wdc.com>, Atish Patra <Atish.Patra@wdc.com>,
 Zong Li <zong.li@sifive.com>, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-riscv@lists.infradead.org
References: <20200607075949.665-1-alex@ghiti.fr>
 <20200607075949.665-3-alex@ghiti.fr>
From: Jerome Forissier <jerome@forissier.org>
Message-ID: <b588dd9e-dff8-3458-0c7d-149e3990bca7@forissier.org>
Date: Wed, 10 Jun 2020 16:10:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200607075949.665-3-alex@ghiti.fr>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_071030_992822_2FAD4481 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Anup Patel <anup@brainfault.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org



On 6/7/20 9:59 AM, Alexandre Ghiti wrote:
[...]

> +config RELOCATABLE
> +	bool
> +	depends on MMU
> +	help
> +          This builds a kernel as a Position Independent Executable (PIE),
> +          which retains all relocation metadata required to relocate the
> +          kernel binary at runtime to a different virtual address than the
> +          address it was linked at.
> +          Since RISCV uses the RELA relocation format, this requires a
> +          relocation pass at runtime even if the kernel is loaded at the
> +          same address it was linked at.

Is this true? I thought that the GNU linker would write the "proper"
values by default, contrary to the LLVM linker (ld.lld) which would need
a special flag: --apply-dynamic-relocs (by default the relocated places
are set to zero). At least, it is my experience with Aarch64 on a
different project. So, sorry if I'm talking nonsense here -- I have not
looked at the details.

-- 
Jerome

