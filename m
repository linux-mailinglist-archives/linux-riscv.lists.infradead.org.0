Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0FBC0CF2
	for <lists+linux-riscv@lfdr.de>; Fri, 27 Sep 2019 22:58:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pjlXcmVlScdQ2G2XgUFwkpyvYnUVlkuEe03VENY53u8=; b=GI1BExPgf8PZ7L
	0lwCDaDGh0LG9H/UkT0YlINZ1eOfU10pMzfA/PRPCJBJLc+0ckJ7g+c+sSXg1pjKBeJ4oFjGMOYi2
	j1lWqs4nCe7Mx9zPFv6bgnebIU4sxSfb7NHybJ5IV4Y20C7e25rHKQuQAmg5EZoescdajbM5Kyynh
	+EpZZnbIcHW+vlWUbEPVV6mE46vPYkACAxFTVMh3ypFV8fIWhMq2cn28TA/p1t/GQUYmAPgMTXEUV
	RqGTRgl3WD9zn7L3RrQprk3jMIW3/ZoIUdKoXBKSCc3rViJ9VXp0+u4f/5wza5liP2BYInvdzsAU/
	JtclkVKuH7YvH5nZ+9zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDxJr-0004Ho-JL; Fri, 27 Sep 2019 20:58:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDxJo-0004H2-6H
 for linux-riscv@lists.infradead.org; Fri, 27 Sep 2019 20:58:25 +0000
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
 [209.85.221.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 84E5420872
 for <linux-riscv@lists.infradead.org>; Fri, 27 Sep 2019 20:58:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569617903;
 bh=JHvPXPKOI8xXY+v+RmsysJ+7eQJL2fGTE9qEG3GltO4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=IZBobdmnLixGOMe0GgALjKFamRkN+1/IlDJ93Mesp167haHYR7IBTWvK6yM1HL85P
 fgn5Hvfd5gJ9LHq/raH1oyc+JNVnN55DE5TJ7vnvYOudEB+EMU2l92r1xncFRaMHhV
 RqDQ8KOcKcKYu9CMwqEVaB0ZppLtJi/hqoWYNb3U=
Received: by mail-wr1-f50.google.com with SMTP id i1so4655343wro.4
 for <linux-riscv@lists.infradead.org>; Fri, 27 Sep 2019 13:58:23 -0700 (PDT)
X-Gm-Message-State: APjAAAWLKzi87dZoX+fhMcNOj0MMwNSuNf7K0suWhGN9PRLY0J/hkk2M
 ow/b1wEA60Nte8fgSsx6tlfj5ZszWrOjSR5tRT5E2Q==
X-Google-Smtp-Source: APXvYqxmWFPXVg5my2vdtfXTIKkRAsW/tJXeLCeFEGi5LTezBydsLm94jzUi9r5S9tnwrfzAbRz3QhWaRfS3fvEnT+I=
X-Received: by 2002:adf:dbc6:: with SMTP id e6mr4312618wrj.149.1569617900104; 
 Fri, 27 Sep 2019 13:58:20 -0700 (PDT)
MIME-Version: 1.0
References: <419CB0D1-E51C-49D5-9745-7771C863462F@amacapital.net>
 <mhng-c8a768f7-1a90-4228-b654-be9e879c92ec@palmer-si-x1c4>
In-Reply-To: <mhng-c8a768f7-1a90-4228-b654-be9e879c92ec@palmer-si-x1c4>
From: Andy Lutomirski <luto@kernel.org>
Date: Fri, 27 Sep 2019 13:58:08 -0700
X-Gmail-Original-Message-ID: <CALCETrUmqKz4vu2VCPC5MYGFyiG4djbOmKG32oLtQPb=o6rJ_Q@mail.gmail.com>
Message-ID: <CALCETrUmqKz4vu2VCPC5MYGFyiG4djbOmKG32oLtQPb=o6rJ_Q@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: Palmer Dabbelt <palmer@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_135824_273021_53B97917 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 me@carlosedp.com, Albert Ou <aou@eecs.berkeley.edu>,
 Kees Cook <keescook@chromium.org>, Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@gmail.com>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>,
 Network Development <netdev@vger.kernel.org>, Anup Patel <Anup.Patel@wdc.com>,
 LKML <linux-kernel@vger.kernel.org>, Vincent Chen <vincentc@andestech.com>,
 bpf <bpf@vger.kernel.org>, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVHVlLCBTZXAgMywgMjAxOSBhdCAzOjI3IFBNIFBhbG1lciBEYWJiZWx0IDxwYWxtZXJAc2lm
aXZlLmNvbT4gd3JvdGU6Cj4KPiBPbiBXZWQsIDI4IEF1ZyAyMDE5IDEwOjUyOjA1IFBEVCAoLTA3
MDApLCBsdXRvQGFtYWNhcGl0YWwubmV0IHdyb3RlOgo+ID4KPiA+Cj4gPj4gT24gQXVnIDI1LCAy
MDE5LCBhdCAyOjU5IFBNLCBLZWVzIENvb2sgPGtlZXNjb29rQGNocm9taXVtLm9yZz4gd3JvdGU6
Cj4gPj4KPiA+Pj4gT24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgMDE6NTU6MjJQTSAtMDcwMCwgRGF2
aWQgQWJkdXJhY2htYW5vdiB3cm90ZToKPiA+Pj4gVGhpcyBwYXRjaCB3YXMgZXh0ZW5zaXZlbHkg
dGVzdGVkIG9uIEZlZG9yYS9SSVNDViAoYXBwbGllZCBieSBkZWZhdWx0IG9uCj4gPj4+IHRvcCBv
ZiA1LjItcmM3IGtlcm5lbCBmb3IgPDIgbW9udGhzKS4gVGhlIHBhdGNoIHdhcyBhbHNvIHRlc3Rl
ZCB3aXRoIDUuMy1yYwo+ID4+PiBvbiBRRU1VIGFuZCBTaUZpdmUgVW5sZWFzaGVkIGJvYXJkLgo+
ID4+Cj4gPj4gT29wcywgSSBzZWUgdGhlIG1lbnRpb24gb2YgUUVNVSBoZXJlLiBXaGVyZSdzIHRo
ZSBiZXN0IHBsYWNlIHRvIGZpbmQKPiA+PiBpbnN0cnVjdGlvbnMgb24gY3JlYXRpbmcgYSBxZW11
IHJpc2N2IGltYWdlL2Vudmlyb25tZW50Pwo+ID4KPiA+IEkgZG9u4oCZdCBzdXBwb3NlIG9uZSBv
ZiB5b3UgcmlzY3YgZm9sa3Mgd291bGQgbGlrZSB0byBjb250cmlidXRlIHJpc2N2IHN1cHBvcnQg
dG8gdmlydG1lPyAgdmlydG1lLXJ1biDigJRhcmNoPXJpc2N2IHdvdWxkIGJlIHF1aXRlIG5pY2Us
IGFuZCB0aGUgdG90YWwgcGF0Y2ggc2hvdWxkIGJlIGp1c3QgYSBjb3VwbGUgbGluZXMuICBVbmZv
cnR1bmF0ZWx5LCBpdCBoZWxwcyBhIGxvdCB0byB1bmRlcnN0YW5kIHRoZSBzdWJ0bGV0aWVzIG9m
IGJvb3RpbmcgdGhlIGFyY2hpdGVjdHVyZSB0byB3cml0ZSB0aG9zZSBjb3VwbGUgbGluZXMgOikK
Pgo+IFdoYXQgbWFpbGluZyBsaXN0IHNob3VsZCBJIHNlbnQgdGhpcyB0bz8gIFlvdSBuZWVkIHRv
IHVzZSB0aGUgInZpcnRtZSIgYnJhbmNoCj4gb2Yga2VybmVsLm9yZy9wYWxtZXIvbGludXguZ2l0
IHVudGlsIEkgc2VuZCB0aGUgZGVmY29uZmlnIHBhdGNoZXMuCj4KPiBjb21taXQgYThiZDdiMzE4
NjkxODkxOTkxY2FlYTI5OGY5YTVlZDBmODE1YzMyMgo+IGdwZzogU2lnbmF0dXJlIG1hZGUgVHVl
IDAzIFNlcCAyMDE5IDAzOjIyOjQ1IFBNIFBEVAo+IGdwZzogICAgICAgICAgICAgICAgdXNpbmcg
UlNBIGtleSAwMENFNzZEMTgzNDk2MERGQ0U4ODZERjhFRjRDQTE1MDJDQ0JBQjQxCj4gZ3BnOiAg
ICAgICAgICAgICAgICBpc3N1ZXIgInBhbG1lckBkYWJiZWx0LmNvbSIKPiBncGc6IEdvb2Qgc2ln
bmF0dXJlIGZyb20gIlBhbG1lciBEYWJiZWx0IDxwYWxtZXJAZGFiYmVsdC5jb20+IiBbdWx0aW1h
dGVdCj4gZ3BnOiAgICAgICAgICAgICAgICAgYWthICJQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQHNp
Zml2ZS5jb20+IiBbdWx0aW1hdGVdCj4gQXV0aG9yOiBQYWxtZXIgRGFiYmVsdCA8cGFsbWVyQHNp
Zml2ZS5jb20+Cj4gRGF0ZTogICBUdWUgU2VwIDMgMTQ6Mzk6MzkgMjAxOSAtMDcwMAo+Cj4gICAg
IEFkZCBSSVNDLVYgc3VwcG9ydAoKQ291bGQgeW91IHJlYmFzZSBvbnRvIHZpcnRtZSBtYXN0ZXIg
YW5kIHJlc2VuZCBpbiBzb21lIGZvcm1hdCB0aGF0Cmlzbid0IGNvcnJ1cHQ/ICBnaXQgYW0gcmVh
bGx5IGRvZXNuJ3QgbGlrZSB5b3VyIHBhdGNoIGFuZCwgZXZlbiBpZiBJCmZpeCBpdCB1cCBtYW51
YWxseSwgeW91ciBncGc6IGxpbmVzIGFyZSBib2d1cy4gIFlvdSBjb3VsZCBhbHNvIHNlbmQgYQpQ
UiBhdCBodHRwczovL2dpdGh1Yi5jb20vYW1sdXRvL3ZpcnRtZQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtcmlzY3YgbWFpbGluZyBsaXN0Cmxp
bnV4LXJpc2N2QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yaXNjdgo=
