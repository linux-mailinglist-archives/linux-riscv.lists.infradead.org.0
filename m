Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B70E1E9EA4
	for <lists+linux-riscv@lfdr.de>; Mon,  1 Jun 2020 08:56:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y0w2t/wWI/QCxHDpPI+UeXRtbBNz0ZaPFoJMjmCS4xg=; b=gITdnUCCbutKL6sG1tzFfYZyA
	cHK2lIzTvN5kTQ6LO8WFUKWS6/tFp8eJq7RivVv8NJRjJX85hj9MqR5AKvWDM0q9rIlyw1fzY9IJV
	46ehy+tyvMTq6Ck1mq97TVjMuFqfhKAYYlQOa9MMKhh02OCgneaL9wwfp5lzSnrW5AqHfkEdBw6SE
	rnUq5URbrSJeZESIoiB8cJZ700w2iZJvUoyYT+f7vQ36/EDmOun0kcxZJKgH/Gc7wmGeBKzFZha2+
	UvfbdP9BnnMhKM6rdSz4vMsDP6aZJjLTzTnUOT96S+y8abWcXCHkMdJgUqjd+Thzl8LjC0NEUI13+
	0pmJb4PKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfeMt-0007B1-Ld; Mon, 01 Jun 2020 06:56:19 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfeMp-0007Aa-SK
 for linux-riscv@lists.infradead.org; Mon, 01 Jun 2020 06:56:17 +0000
Received: by mail-oi1-x243.google.com with SMTP id w4so8142680oia.1
 for <linux-riscv@lists.infradead.org>; Sun, 31 May 2020 23:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Y0w2t/wWI/QCxHDpPI+UeXRtbBNz0ZaPFoJMjmCS4xg=;
 b=dzBNYx4KCtzHAwRMHhOThlU8e8bl8Vl7O/mEp8KdVvjoVCnyIDpRRRD0O26JjbJFaq
 8WGjYJTIH7/RWF2mGT4ch5wCbDteVB0FA5dgOfEYBbmdN/WK8FCP21cjwTQdR2B5HuOt
 UoDT3HHD8Y/MxaVjvxaZpewq5hja1+xMeHfpY8ggG41CzMzqzJVTva6QxXibeVUXQ2hF
 1ZVZRkos+sN++v9xqPcQ00oKD7rbQjA6f8wajllZoZbHOnrkw47Bk0/2EQj1/4VfA1yc
 ZhIpRoTnP2NUzGt9dws+sPcMg2KBIXhvZAp10ASou5gwuqheK2Xb+G4/wfW7aNKNgRN1
 sD2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Y0w2t/wWI/QCxHDpPI+UeXRtbBNz0ZaPFoJMjmCS4xg=;
 b=VLuoofp6udWkpWhEI4B5UOqHaiQ3SKFvI4lJv4LjJDhy7Gp1ELjwEFeSBAq+QQFNOX
 FXHEowdHB9T7211tLoYLVmmfwf4bMWLuVcxFT5AQaUzeWEXQOyYECNLxwzspGutS/X/6
 HNg7FaiXUrDLXZyD8iZ0fea0QU0ZBdVbvURX8KRD6945X/h56izScrbPdRgoNoschPa5
 hV/zuLyg4Rss56wZID/f7rLX0H/OROLwgDA6jU442G8qX9WMugCrezfDS6yhTFREQYHx
 jQL0LqVgy+SEPRPhlo/GuppDZ/WR/eBxbcH7PtDisk6qoUaXU9q1U+9IDGJHIPbbxcad
 Ej8w==
X-Gm-Message-State: AOAM5311o8vlnOpi2z2dZ6hFpBMoQkbyWm/Sv8ItN2cayGQ5o1OG5df0
 3ubqbkefTD/HBOLBHEWfm38PQmkFC5qhyDYQLCYjFw==
X-Google-Smtp-Source: ABdhPJyqNACpXYqQkXsHVCY4LqRtj+EL8+2VHnMYc6kVnONhIWLNdbyrmtKRxDEbtjf0LYCIg5vFhJcOZ9TqHDEet18=
X-Received: by 2002:aca:fccf:: with SMTP id a198mr2563302oii.91.1590994574891; 
 Sun, 31 May 2020 23:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <7acb6dcf9975bbf3aff4be3b01320fd1b5ba30c1.1590983619.git.zong.li@sifive.com>
 <87ftbfqo2q.fsf@linux-m68k.org>
In-Reply-To: <87ftbfqo2q.fsf@linux-m68k.org>
From: Zong Li <zong.li@sifive.com>
Date: Mon, 1 Jun 2020 14:56:05 +0800
Message-ID: <CANXhq0q-bZa2Y7T_JUQ5o97zOXyy735tub2r-SnN2Y=joyVW7w@mail.gmail.com>
Subject: Re: [PATCH] riscv: fix build warning of missing prototypes
To: Andreas Schwab <schwab@linux-m68k.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_235615_949917_913DF392 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild test robot <lkp@intel.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Palmer Dabbelt <palmer@dabbelt.com>,
 "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Jun 1, 2020 at 2:48 PM Andreas Schwab <schwab@linux-m68k.org> wrote:
>
> On Jun 01 2020, Zong Li wrote:
>
> > Add the missing header in file, it was losed in original implementation.
>
> s/losed/lost/
>
> Andreas.

Thanks for correcting, let me modify it in the next version.

> --
> Andreas Schwab, schwab@linux-m68k.org
> GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
> "And now for something completely different."

