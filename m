Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E322EA0929
	for <lists+linux-riscv@lfdr.de>; Wed, 28 Aug 2019 20:01:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y6AM+zgFhCO06HgN9jhmzkk4hJvNjv0tcqJXkgwJPy4=; b=s+ChZsVQFNUAwV
	mHC5chuagD6LJ72cGT8Q6ilGLliIjZxv5xGILq3KdG6mcZxWPfUUCbiO88cb3MXOuyQCwNrGZMvaT
	YPW17Ng8RecyxnokCjIO/yAix/TGUNBgf+YOQBWAJ0O4sekGTCdn/wqV0w9h8Eyxj31o6PkQ2WM0k
	n0WFOxme+nw9UefAbYXArdA/tzV/KvKMbSh9xzBlz9s5RSMRKoYzrvaYPe594MneRWzVh6vcEgg5e
	1EpqtsoplC21OrPu1cHt9Du2TDCDN2FNk0QUHyybJADxlz1FEnn2+5E1ZGwCNtDKt2ZCxEz56L6L2
	iBHV9n7XdTr1+plt8s2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32G2-0002l4-1D; Wed, 28 Aug 2019 18:01:22 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32Fu-0002jn-Kk
 for linux-riscv@lists.infradead.org; Wed, 28 Aug 2019 18:01:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id w26so265774pfq.12
 for <linux-riscv@lists.infradead.org>; Wed, 28 Aug 2019 11:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=BFJvddMVdRzlLg4JaQXTPKjXHEos9ALpLQhTxwQRgB0=;
 b=ASkY1rUlh5uPsHc6yy1UDllwaGq7eHHaqrx9mHH1JQk+Juc6hS4cevD9XTNCDZesbH
 Mmo9mFrqYcCia1Ti/2PSg9CY+Q8KpxUS8DMx9XHSfqZZ6kXEF39+pefIA2AvUzXJi4+i
 2z/Sepk/beKs+aXtnAYFGTpIHKCQHRn848/5Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=BFJvddMVdRzlLg4JaQXTPKjXHEos9ALpLQhTxwQRgB0=;
 b=tFnONJ5tGmR55le4C7gNXfokugZ0Eyh6pgDSdGrCFqT+aH4bRoLs3EWM6BusVJ/6h1
 4eveBS2adrK/IueUfB3JtqDoLD+6FXSqbuUzMWjscXP0DGDiOmWNQI92LNI8zZzMt2q6
 GS5s31lyeZ5fJh/E82kQW+k8YTWNaOtbAxuWEYjhm72UN9kD/nQzdQtS9eVpsPn5SbMs
 DMrvWOlx+tY6DMwZyrt67T8wL3hDFnBBC0CLmFVXrmDNftWfR13yQ/e37bvQ09ecFX4v
 05dxYbGWKi5TB9BY1m7mZbF9iZjjW5GpTvKeFYfQju+5gh4yH06FHKIEa2espuQTOynH
 uwtA==
X-Gm-Message-State: APjAAAW6r/fzpOQ1nBeObyaCMa7Fyu7cm72GmcTttP3dJ5r02DnCo9Ew
 clNFNxmxX3u7MVKYe9068QCarA==
X-Google-Smtp-Source: APXvYqxl9ldGbN+Y6p7HIDBEFutfmUjTW+7dVVdP5QoMG/5a9Fx5qHPh4AtBUYcTgv24Hatkm1LSYw==
X-Received: by 2002:a17:90a:6581:: with SMTP id
 k1mr5476919pjj.47.1567015272079; 
 Wed, 28 Aug 2019 11:01:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z4sm3347892pfg.166.2019.08.28.11.01.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 11:01:11 -0700 (PDT)
Date: Wed, 28 Aug 2019 11:01:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Andy Lutomirski <luto@amacapital.net>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
Message-ID: <201908281100.D78277FD@keescook>
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
 <201908251451.73C6812E8@keescook>
 <419CB0D1-E51C-49D5-9745-7771C863462F@amacapital.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <419CB0D1-E51C-49D5-9745-7771C863462F@amacapital.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_110117_125046_531EBF8A 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

T24gV2VkLCBBdWcgMjgsIDIwMTkgYXQgMTA6NTI6MDVBTSAtMDcwMCwgQW5keSBMdXRvbWlyc2tp
IHdyb3RlOgo+IAo+IAo+ID4gT24gQXVnIDI1LCAyMDE5LCBhdCAyOjU5IFBNLCBLZWVzIENvb2sg
PGtlZXNjb29rQGNocm9taXVtLm9yZz4gd3JvdGU6Cj4gPiAKPiA+PiBPbiBUaHUsIEF1ZyAyMiwg
MjAxOSBhdCAwMTo1NToyMlBNIC0wNzAwLCBEYXZpZCBBYmR1cmFjaG1hbm92IHdyb3RlOgo+ID4+
IFRoaXMgcGF0Y2ggd2FzIGV4dGVuc2l2ZWx5IHRlc3RlZCBvbiBGZWRvcmEvUklTQ1YgKGFwcGxp
ZWQgYnkgZGVmYXVsdCBvbgo+ID4+IHRvcCBvZiA1LjItcmM3IGtlcm5lbCBmb3IgPDIgbW9udGhz
KS4gVGhlIHBhdGNoIHdhcyBhbHNvIHRlc3RlZCB3aXRoIDUuMy1yYwo+ID4+IG9uIFFFTVUgYW5k
IFNpRml2ZSBVbmxlYXNoZWQgYm9hcmQuCj4gPiAKPiA+IE9vcHMsIEkgc2VlIHRoZSBtZW50aW9u
IG9mIFFFTVUgaGVyZS4gV2hlcmUncyB0aGUgYmVzdCBwbGFjZSB0byBmaW5kCj4gPiBpbnN0cnVj
dGlvbnMgb24gY3JlYXRpbmcgYSBxZW11IHJpc2N2IGltYWdlL2Vudmlyb25tZW50Pwo+IAo+IEkg
ZG9u4oCZdCBzdXBwb3NlIG9uZSBvZiB5b3UgcmlzY3YgZm9sa3Mgd291bGQgbGlrZSB0byBjb250
cmlidXRlIHJpc2N2IHN1cHBvcnQgdG8gdmlydG1lPyAgdmlydG1lLXJ1biDigJRhcmNoPXJpc2N2
IHdvdWxkIGJlIHF1aXRlIG5pY2UsIGFuZCB0aGUgdG90YWwgcGF0Y2ggc2hvdWxkIGJlIGp1c3Qg
YSBjb3VwbGUgbGluZXMuICBVbmZvcnR1bmF0ZWx5LCBpdCBoZWxwcyBhIGxvdCB0byB1bmRlcnN0
YW5kIHRoZSBzdWJ0bGV0aWVzIG9mIGJvb3RpbmcgdGhlIGFyY2hpdGVjdHVyZSB0byB3cml0ZSB0
aG9zZSBjb3VwbGUgbGluZXMgOikKCkFzIGl0IHR1cm5zIG91dCwgdGhpcyBpcyB3aGVyZSBJJ20g
c3R1Y2suIEFsbCB0aGUgaW5zdHJ1Y3Rpb25zIEkgY2FuCmZpbmQgYXJlIGFib3V0IGJvb3Rpbmcg
YSBrZXJuZWwgb2ZmIGEgZGlzayBpbWFnZS4gOigKCi0tIApLZWVzIENvb2sKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LXJpc2N2IG1haWxpbmcg
bGlzdApsaW51eC1yaXNjdkBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcmlzY3YK
