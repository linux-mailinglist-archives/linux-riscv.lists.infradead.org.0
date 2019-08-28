Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1922A08FC
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 19:52:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CebnI2O4RLciwuQy+vmGf4WStb1nWJIw54lAy40zqKw=; b=SuQ5ybKPfdU23e
	IUiTYvSxmp6yGOqpr2cvCDQ5QsD0h7u7xX8zP4d0LwzT0ciIaQCr8GEaeHtBXZe4pwN5fuR5OqG0h
	Eoohs/QF2Cf+7FY+RW0VfOxMLtkO77Y9kYVfQlP7YHjZeK1cn254j4axymVBxqqwvdCj6b9M8C3iM
	+yhRgjKT9hoO4xsP6grLrrg2lUncRDWqoHjWLifnifNDbBiH2Su2drHaTp9yG5F2KzM+dMsGIWcs1
	pM9eFsEkLQRBDyeDhmYFxXCOuQsSfWpbj4u3ygeh9d5FOII5AI5ly8fkB/W/sSsQ/gzAgzXGpyvZ1
	1BdNb5YOBc4FSKgZE1gA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i327A-00087c-KF; Wed, 28 Aug 2019 17:52:12 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3277-000876-3S
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 17:52:10 +0000
Received: by mail-pg1-x543.google.com with SMTP id u17so123185pgi.6
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 10:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amacapital-net.20150623.gappssmtp.com; s=20150623;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=jQX3yoLyPfk/0j+lt93BtL/GBDo4w3swgacBIDakXXQ=;
 b=XhlIuiCrJiPd178mhAYLbMaCFhZdbbqbwaKU3q6uJ30qMagqqTw/bFQdZlNUymLTK8
 dAlhmcyR3vP0ZtDqdiHYyudCImcd6mGVQj44mv4tr0vwZxX8d6TFobwdN4uxlZ1uDl/t
 X/kt1Ft483Gh0bH+NGznab4xcFdJ/6TYS+9Yo3rpExBYeqGDHZD6RaHPArHNC3kr2rgJ
 NxILOLue3/+PKN00bZKV+tNBQ8D4tNvwKWRAPKMbVtIL1UD4Gr4sqUnHjy2NZtrlK7hv
 Jg6WoKH+rCjRnSUQMig8d9M/n0qExNh5AHuPyAICyXxTEnIuGS65lVHCT01gHzZmPOSt
 MLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=jQX3yoLyPfk/0j+lt93BtL/GBDo4w3swgacBIDakXXQ=;
 b=cdHCowrovQokNhyDFyRJykHH6EI3dMHALtltCPlirbPT4O7zjZKkdOrkCbYVvaqGc7
 MKE0gicJ5n6kmFsZnF38GJFo6jsP9xehI3+EhqCRIz9pcex8G+kk7rM8kA0BIWWxPz9n
 lGeKXZqO5fIsrxfDUAku4T9l07g9OhumbAXScmf/SO4QcjJeWb5XmmbFX9hhcgfEXnBc
 TP1rVMnk0hdRlhAeYp5bI6x5uxs6+T1MmnIvy1wgNQLEnW3PvaUKIjv2aV8YKkdvpSzQ
 riK3RHRjmjv2N8pVwZ1x78Utbw+SA07likf1dcNJ2L59DzDgEUmlYq+k5u4VIRG/Oypl
 xrSg==
X-Gm-Message-State: APjAAAXlHmCrPvlH1IgIgImvJedSHS4Tl2eEZy+62e5Bphi0/CeqmjIX
 foVkdrnK/5SiFLuOd7/dnqO8+s+7NCk=
X-Google-Smtp-Source: APXvYqxOrLR3mQwFe9lP+xvQ8UaEwRlRzDb4ILg8zRF5qtKWo+EbZYY96fc4AyXGZBZM2GL8Qh83Qw==
X-Received: by 2002:a17:90a:9905:: with SMTP id
 b5mr2493871pjp.117.1567014727512; 
 Wed, 28 Aug 2019 10:52:07 -0700 (PDT)
Received: from ?IPv6:2600:1012:b023:28ef:14c8:9cc:b602:d8f?
 ([2600:1012:b023:28ef:14c8:9cc:b602:d8f])
 by smtp.gmail.com with ESMTPSA id x10sm2728615pjo.4.2019.08.28.10.52.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 28 Aug 2019 10:52:06 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
From: Andy Lutomirski <luto@amacapital.net>
X-Mailer: iPhone Mail (16G77)
In-Reply-To: <201908251451.73C6812E8@keescook>
Date: Wed, 28 Aug 2019 10:52:05 -0700
Message-Id: <419CB0D1-E51C-49D5-9745-7771C863462F@amacapital.net>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <201908251451.73C6812E8@keescook>
To: Kees Cook <keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_105209_281694_4F680C0C 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Vincent Chen <vincentc@andestech.com>, bpf@vger.kernel.org,
 Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Cgo+IE9uIEF1ZyAyNSwgMjAxOSwgYXQgMjo1OSBQTSwgS2VlcyBDb29rIDxrZWVzY29va0BjaHJv
bWl1bS5vcmc+IHdyb3RlOgo+IAo+PiBPbiBUaHUsIEF1ZyAyMiwgMjAxOSBhdCAwMTo1NToyMlBN
IC0wNzAwLCBEYXZpZCBBYmR1cmFjaG1hbm92IHdyb3RlOgo+PiBUaGlzIHBhdGNoIHdhcyBleHRl
bnNpdmVseSB0ZXN0ZWQgb24gRmVkb3JhL1JJU0NWIChhcHBsaWVkIGJ5IGRlZmF1bHQgb24KPj4g
dG9wIG9mIDUuMi1yYzcga2VybmVsIGZvciA8MiBtb250aHMpLiBUaGUgcGF0Y2ggd2FzIGFsc28g
dGVzdGVkIHdpdGggNS4zLXJjCj4+IG9uIFFFTVUgYW5kIFNpRml2ZSBVbmxlYXNoZWQgYm9hcmQu
Cj4gCj4gT29wcywgSSBzZWUgdGhlIG1lbnRpb24gb2YgUUVNVSBoZXJlLiBXaGVyZSdzIHRoZSBi
ZXN0IHBsYWNlIHRvIGZpbmQKPiBpbnN0cnVjdGlvbnMgb24gY3JlYXRpbmcgYSBxZW11IHJpc2N2
IGltYWdlL2Vudmlyb25tZW50PwoKSSBkb27igJl0IHN1cHBvc2Ugb25lIG9mIHlvdSByaXNjdiBm
b2xrcyB3b3VsZCBsaWtlIHRvIGNvbnRyaWJ1dGUgcmlzY3Ygc3VwcG9ydCB0byB2aXJ0bWU/ICB2
aXJ0bWUtcnVuIOKAlGFyY2g9cmlzY3Ygd291bGQgYmUgcXVpdGUgbmljZSwgYW5kIHRoZSB0b3Rh
bCBwYXRjaCBzaG91bGQgYmUganVzdCBhIGNvdXBsZSBsaW5lcy4gIFVuZm9ydHVuYXRlbHksIGl0
IGhlbHBzIGEgbG90IHRvIHVuZGVyc3RhbmQgdGhlIHN1YnRsZXRpZXMgb2YgYm9vdGluZyB0aGUg
YXJjaGl0ZWN0dXJlIHRvIHdyaXRlIHRob3NlIGNvdXBsZSBsaW5lcyA6KQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcg
bGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
