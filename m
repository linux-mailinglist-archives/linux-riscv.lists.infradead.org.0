Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F4CC9B8B2
	for <lists+linux-riscv@lfdr.de>; Sat, 24 Aug 2019 01:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mM1fa9hYLf+Jm9LZU4A1LIbbhvUaT2J7bDVRye6O6qg=; b=R56AT+BaQWg40I
	88Dejc0uhNMKZIMhxxF8LWUTov7K8zjoQE6dACTHW1xXDf01BpRtUPS3ydOAv74ldm+ZGjYtvIMdE
	6fSCT9p56qinnnmMFwC2erMeDYbsxYaNjKZivsmejh4tCGNuwcfjktFOW/btcmZOUoCgEv65F1MpN
	orfyXtl04Hd+Rlpu6gv1S34SxB80rJdzaP0qwUIX2Yx7OeSZUq57ffmUvyyp6glm14Bh6Qcose4mZ
	uw1VlCZaS11V2o4esrY5gQG8v7IiZO4oOt4V1QX0pWRBtatHSliPq9w/5t5U2OtZdb2sV9zzJ9jzd
	H6cR56mDFl2CmxwHlcNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1IZ9-0006Ox-T0; Fri, 23 Aug 2019 23:01:55 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1IZ6-0006Ne-7G
 for linux-riscv@lists.infradead.org; Fri, 23 Aug 2019 23:01:54 +0000
Received: by mail-oi1-x244.google.com with SMTP id v12so8215692oic.12
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 16:01:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=carlosedp-com.20150623.gappssmtp.com; s=20150623;
 h=sender:mime-version:references:in-reply-to:from:date:message-id
 :subject:to:cc:content-transfer-encoding;
 bh=0pXIWT49qT99+MZqSX6J3qIkOa98enjaIWpmEfE3IPA=;
 b=Jl5d/uqkObPLx0iH9yZrJcloZb/epBBG+ZOpG+5BM35bvyU+j2FXYKQykwPsIKmni1
 4s9a6V9tpfMAPLD+bVtSCM1ehPdw4b9HDVnPHAZrH/wFVzsyF1e53oa4nRRjEGZr68/X
 XNc5uKoUP53m+GghArqfiiMRkv108FWQvdRaiaAZDCP9J4zVO+aUylyTom/QVzMeTr9W
 NqtUl4Mh2Fj8QEBdmz8GCfemwdMhUQYd6EOIdNkmaGe9MNsztG2SzR9M1c3Ho26lXa6l
 cSGsRJVxYaogzVog1vlgU9ilj/WfunMayQ2g0z+Sgj6s/Qxa4wfUkaB9bdnNnYZ7D9YM
 5nvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:mime-version:references:in-reply-to:from
 :date:message-id:subject:to:cc:content-transfer-encoding;
 bh=0pXIWT49qT99+MZqSX6J3qIkOa98enjaIWpmEfE3IPA=;
 b=k+CxI36nGps7AAUoM6EYstpp1OENjSqUTelPdLbFzrT+DHt2yjnINPB+Ul/l82z8px
 hxfD/++g57QX/GxylESYq8+MsLRNzO6sd0XNGQGmyAnxVA4rm9nh7UOfnfNshvxxAgRv
 1WmPkMuQafzw9bt+xTcIKsN2mfMNJ/+dUCRhCq8hYY18HARAIAiX6RoF5raZiEsKzPB3
 2C52R9KOQZKFYUlTNT+PuMxj73UbSH9g+73LYzK+IRXlycnB6/lsvGoiehBprZm935xS
 1z9/UYBNYiMYsbBRd2Cn+ODvhMX7DorECIUbmuw1eYffvKzrQp/ftGmchbJKf8KAkZyy
 O9iw==
X-Gm-Message-State: APjAAAXrSsNixOaQFKW+mNHVK4Ct1xLei3WZoWudsRLLvGI93KMk1SC3
 hpfS6JQTYlISYon0QZK0Bhk1yVGg0q8wDA==
X-Google-Smtp-Source: APXvYqz4P4BJDoyk6nZZw96GIxhlRgVJxxmkST83V7/0EOUrUe7Rws5cIcQZsnwONCcjBHZxZ+l8ew==
X-Received: by 2002:aca:d09:: with SMTP id 9mr4919618oin.40.1566601306920;
 Fri, 23 Aug 2019 16:01:46 -0700 (PDT)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com.
 [209.85.167.182])
 by smtp.gmail.com with ESMTPSA id s22sm1156492oij.37.2019.08.23.16.01.46
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 23 Aug 2019 16:01:46 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id 16so8219216oiq.6
 for <linux-riscv@lists.infradead.org>; Fri, 23 Aug 2019 16:01:46 -0700 (PDT)
X-Received: by 2002:aca:2209:: with SMTP id b9mr4930123oic.54.1566601305670;
 Fri, 23 Aug 2019 16:01:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
In-Reply-To: <20190822205533.4877-1-david.abdurachmanov@sifive.com>
From: Carlos Eduardo de Paula <me@carlosedp.com>
Date: Fri, 23 Aug 2019 20:01:34 -0300
X-Gmail-Original-Message-ID: <CADnnUqcmDMRe1f+3jG8SPR6jRrnBsY8VVD70VbKEm0NqYeoicA@mail.gmail.com>
Message-ID: <CADnnUqcmDMRe1f+3jG8SPR6jRrnBsY8VVD70VbKEm0NqYeoicA@mail.gmail.com>
Subject: Re: [PATCH v2] riscv: add support for SECCOMP and SECCOMP_FILTER
To: David Abdurachmanov <david.abdurachmanov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_160152_272898_A4EB1708 
X-CRM114-Status: GOOD (  26.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Song Liu <songliubraving@fb.com>, Alan Kao <alankao@andestech.com>,
 Palmer Dabbelt <palmer@sifive.com>, Alexei Starovoitov <ast@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, linux-kselftest@vger.kernel.org,
 linux-riscv@lists.infradead.org, Shuah Khan <shuah@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Yonghong Song <yhs@fb.com>,
 Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Alexios Zavras <alexios.zavras@intel.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>,
 Allison Randal <allison@lohutok.net>, Will Drewry <wad@chromium.org>,
 David Abdurachmanov <david.abdurachmanov@sifive.com>, netdev@vger.kernel.org,
 Anup Patel <Anup.Patel@wdc.com>, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@amacapital.net>, Vincent Chen <vincentc@andestech.com>,
 bpf@vger.kernel.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

T24gVGh1LCBBdWcgMjIsIDIwMTkgYXQgNTo1NiBQTSBEYXZpZCBBYmR1cmFjaG1hbm92CjxkYXZp
ZC5hYmR1cmFjaG1hbm92QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIHdhcyBleHRl
bnNpdmVseSB0ZXN0ZWQgb24gRmVkb3JhL1JJU0NWIChhcHBsaWVkIGJ5IGRlZmF1bHQgb24KPiB0
b3Agb2YgNS4yLXJjNyBrZXJuZWwgZm9yIDwyIG1vbnRocykuIFRoZSBwYXRjaCB3YXMgYWxzbyB0
ZXN0ZWQgd2l0aCA1LjMtcmMKPiBvbiBRRU1VIGFuZCBTaUZpdmUgVW5sZWFzaGVkIGJvYXJkLgo+
Cj4gbGlic2VjY29tcCAodXNlcnNwYWNlKSB3YXMgcmViYXNlZDoKPiBodHRwczovL2dpdGh1Yi5j
b20vc2VjY29tcC9saWJzZWNjb21wL3B1bGwvMTM0Cj4KPiBGdWxseSBwYXNzZXMgbGlic2VjY29t
cCByZWdyZXNzaW9uIHRlc3RpbmcgKHNpbXVsYXRpb24gYW5kIGxpdmUpLgo+Cj4gVGhlcmUgaXMg
b25lIGZhaWxpbmcga2VybmVsIHNlbGZ0ZXN0OiBnbG9iYWwudXNlcl9ub3RpZmljYXRpb25fc2ln
bmFsCj4KPiB2MSAtPiB2MjoKPiAgIC0gcmV0dXJuIGltbWVkaWF0bHkgaWYgc2VjdXJlX2NvbXB1
dGluZyhOVUxMKSByZXR1cm5zIC0xCj4gICAtIGZpeGVkIHdoaXRlc3BhY2UgaXNzdWVzCj4gICAt
IGFkZCBtaXNzaW5nIHNlY2NvbXAuaAo+ICAgLSByZW1vdmUgcGF0Y2ggIzIgKHNvbHZlZCBub3cp
Cj4gICAtIGFkZCByaXNjdiB0byBzZWNjb21wIGtlcm5lbCBzZWxmdGVzdAo+Cj4gQ2M6IGtlZXNj
b29rQGNocm9taXVtLm9yZwo+IENjOiBtZUBjYXJsb3NlZHAuY29tCj4KPiBTaWduZWQtb2ZmLWJ5
OiBEYXZpZCBBYmR1cmFjaG1hbm92IDxkYXZpZC5hYmR1cmFjaG1hbm92QHNpZml2ZS5jb20+Cj4g
VGVzdGVkLWJ5OiBDYXJsb3MgZGUgUGF1bGEgPG1lQGNhcmxvc2VkcC5jb20+Cj4gLS0tCj4gIGFy
Y2gvcmlzY3YvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgICAgICB8IDE0ICsrKysrKysr
KysKPiAgYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS9zZWNjb21wLmggICAgICAgICAgICAgIHwgMTAg
KysrKysrKwo+ICBhcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3RocmVhZF9pbmZvLmggICAgICAgICAg
fCAgNSArKystCj4gIGFyY2gvcmlzY3Yva2VybmVsL2VudHJ5LlMgICAgICAgICAgICAgICAgICAg
ICB8IDI3ICsrKysrKysrKysrKysrKysrLS0KPiAgYXJjaC9yaXNjdi9rZXJuZWwvcHRyYWNlLmMg
ICAgICAgICAgICAgICAgICAgIHwgMTAgKysrKysrKwo+ICB0b29scy90ZXN0aW5nL3NlbGZ0ZXN0
cy9zZWNjb21wL3NlY2NvbXBfYnBmLmMgfCAgOCArKysrKy0KPiAgNiBmaWxlcyBjaGFuZ2VkLCA3
MCBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgYXJj
aC9yaXNjdi9pbmNsdWRlL2FzbS9zZWNjb21wLmgKPgo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2
L0tjb25maWcgYi9hcmNoL3Jpc2N2L0tjb25maWcKPiBpbmRleCA1OWE0NzI3ZWNkNmMuLjQ0MWU2
M2ZmNWFkYyAxMDA2NDQKPiAtLS0gYS9hcmNoL3Jpc2N2L0tjb25maWcKPiArKysgYi9hcmNoL3Jp
c2N2L0tjb25maWcKPiBAQCAtMzEsNiArMzEsNyBAQCBjb25maWcgUklTQ1YKPiAgICAgICAgIHNl
bGVjdCBHRU5FUklDX1NNUF9JRExFX1RIUkVBRAo+ICAgICAgICAgc2VsZWN0IEdFTkVSSUNfQVRP
TUlDNjQgaWYgITY0QklUCj4gICAgICAgICBzZWxlY3QgSEFWRV9BUkNIX0FVRElUU1lTQ0FMTAo+
ICsgICAgICAgc2VsZWN0IEhBVkVfQVJDSF9TRUNDT01QX0ZJTFRFUgo+ICAgICAgICAgc2VsZWN0
IEhBVkVfTUVNQkxPQ0tfTk9ERV9NQVAKPiAgICAgICAgIHNlbGVjdCBIQVZFX0RNQV9DT05USUdV
T1VTCj4gICAgICAgICBzZWxlY3QgSEFWRV9GVVRFWF9DTVBYQ0hHIGlmIEZVVEVYCj4gQEAgLTIz
NSw2ICsyMzYsMTkgQEAgbWVudSAiS2VybmVsIGZlYXR1cmVzIgo+Cj4gIHNvdXJjZSAia2VybmVs
L0tjb25maWcuaHoiCj4KPiArY29uZmlnIFNFQ0NPTVAKPiArICAgICAgIGJvb2wgIkVuYWJsZSBz
ZWNjb21wIHRvIHNhZmVseSBjb21wdXRlIHVudHJ1c3RlZCBieXRlY29kZSIKPiArICAgICAgIGhl
bHAKPiArICAgICAgICAgVGhpcyBrZXJuZWwgZmVhdHVyZSBpcyB1c2VmdWwgZm9yIG51bWJlciBj
cnVuY2hpbmcgYXBwbGljYXRpb25zCj4gKyAgICAgICAgIHRoYXQgbWF5IG5lZWQgdG8gY29tcHV0
ZSB1bnRydXN0ZWQgYnl0ZWNvZGUgZHVyaW5nIHRoZWlyCj4gKyAgICAgICAgIGV4ZWN1dGlvbi4g
QnkgdXNpbmcgcGlwZXMgb3Igb3RoZXIgdHJhbnNwb3J0cyBtYWRlIGF2YWlsYWJsZSB0bwo+ICsg
ICAgICAgICB0aGUgcHJvY2VzcyBhcyBmaWxlIGRlc2NyaXB0b3JzIHN1cHBvcnRpbmcgdGhlIHJl
YWQvd3JpdGUKPiArICAgICAgICAgc3lzY2FsbHMsIGl0J3MgcG9zc2libGUgdG8gaXNvbGF0ZSB0
aG9zZSBhcHBsaWNhdGlvbnMgaW4KPiArICAgICAgICAgdGhlaXIgb3duIGFkZHJlc3Mgc3BhY2Ug
dXNpbmcgc2VjY29tcC4gT25jZSBzZWNjb21wIGlzCj4gKyAgICAgICAgIGVuYWJsZWQgdmlhIHBy
Y3RsKFBSX1NFVF9TRUNDT01QKSwgaXQgY2Fubm90IGJlIGRpc2FibGVkCj4gKyAgICAgICAgIGFu
ZCB0aGUgdGFzayBpcyBvbmx5IGFsbG93ZWQgdG8gZXhlY3V0ZSBhIGZldyBzYWZlIHN5c2NhbGxz
Cj4gKyAgICAgICAgIGRlZmluZWQgYnkgZWFjaCBzZWNjb21wIG1vZGUuCj4gKwo+ICBlbmRtZW51
Cj4KPiAgbWVudSAiQm9vdCBvcHRpb25zIgo+IGRpZmYgLS1naXQgYS9hcmNoL3Jpc2N2L2luY2x1
ZGUvYXNtL3NlY2NvbXAuaCBiL2FyY2gvcmlzY3YvaW5jbHVkZS9hc20vc2VjY29tcC5oCj4gbmV3
IGZpbGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmJmNzc0NGVlM2IzZAo+IC0t
LSAvZGV2L251bGwKPiArKysgYi9hcmNoL3Jpc2N2L2luY2x1ZGUvYXNtL3NlY2NvbXAuaAo+IEBA
IC0wLDAgKzEsMTAgQEAKPiArLyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgKi8K
PiArCj4gKyNpZm5kZWYgX0FTTV9TRUNDT01QX0gKPiArI2RlZmluZSBfQVNNX1NFQ0NPTVBfSAo+
ICsKPiArI2luY2x1ZGUgPGFzbS91bmlzdGQuaD4KPiArCj4gKyNpbmNsdWRlIDxhc20tZ2VuZXJp
Yy9zZWNjb21wLmg+Cj4gKwo+ICsjZW5kaWYgLyogX0FTTV9TRUNDT01QX0ggKi8KPiBkaWZmIC0t
Z2l0IGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS90aHJlYWRfaW5mby5oIGIvYXJjaC9yaXNjdi9p
bmNsdWRlL2FzbS90aHJlYWRfaW5mby5oCj4gaW5kZXggOTA1MzcyZDdlZWI4Li5hMGIyYTI5YTBk
YTEgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS90aHJlYWRfaW5mby5oCj4g
KysrIGIvYXJjaC9yaXNjdi9pbmNsdWRlL2FzbS90aHJlYWRfaW5mby5oCj4gQEAgLTc1LDYgKzc1
LDcgQEAgc3RydWN0IHRocmVhZF9pbmZvIHsKPiAgI2RlZmluZSBUSUZfTUVNRElFICAgICAgICAg
ICAgIDUgICAgICAgLyogaXMgdGVybWluYXRpbmcgZHVlIHRvIE9PTSBraWxsZXIgKi8KPiAgI2Rl
ZmluZSBUSUZfU1lTQ0FMTF9UUkFDRVBPSU5UICA2ICAgICAgIC8qIHN5c2NhbGwgdHJhY2Vwb2lu
dCBpbnN0cnVtZW50YXRpb24gKi8KPiAgI2RlZmluZSBUSUZfU1lTQ0FMTF9BVURJVCAgICAgIDcg
ICAgICAgLyogc3lzY2FsbCBhdWRpdGluZyAqLwo+ICsjZGVmaW5lIFRJRl9TRUNDT01QICAgICAg
ICAgICAgOCAgICAgICAvKiBzeXNjYWxsIHNlY3VyZSBjb21wdXRpbmcgKi8KPgo+ICAjZGVmaW5l
IF9USUZfU1lTQ0FMTF9UUkFDRSAgICAgKDEgPDwgVElGX1NZU0NBTExfVFJBQ0UpCj4gICNkZWZp
bmUgX1RJRl9OT1RJRllfUkVTVU1FICAgICAoMSA8PCBUSUZfTk9USUZZX1JFU1VNRSkKPiBAQCAt
ODIsMTEgKzgzLDEzIEBAIHN0cnVjdCB0aHJlYWRfaW5mbyB7Cj4gICNkZWZpbmUgX1RJRl9ORUVE
X1JFU0NIRUQgICAgICAoMSA8PCBUSUZfTkVFRF9SRVNDSEVEKQo+ICAjZGVmaW5lIF9USUZfU1lT
Q0FMTF9UUkFDRVBPSU5UICAgICAgICAoMSA8PCBUSUZfU1lTQ0FMTF9UUkFDRVBPSU5UKQo+ICAj
ZGVmaW5lIF9USUZfU1lTQ0FMTF9BVURJVCAgICAgKDEgPDwgVElGX1NZU0NBTExfQVVESVQpCj4g
KyNkZWZpbmUgX1RJRl9TRUNDT01QICAgICAgICAgICAoMSA8PCBUSUZfU0VDQ09NUCkKPgo+ICAj
ZGVmaW5lIF9USUZfV09SS19NQVNLIFwKPiAgICAgICAgIChfVElGX05PVElGWV9SRVNVTUUgfCBf
VElGX1NJR1BFTkRJTkcgfCBfVElGX05FRURfUkVTQ0hFRCkKPgo+ICAjZGVmaW5lIF9USUZfU1lT
Q0FMTF9XT1JLIFwKPiAtICAgICAgIChfVElGX1NZU0NBTExfVFJBQ0UgfCBfVElGX1NZU0NBTExf
VFJBQ0VQT0lOVCB8IF9USUZfU1lTQ0FMTF9BVURJVCkKPiArICAgICAgIChfVElGX1NZU0NBTExf
VFJBQ0UgfCBfVElGX1NZU0NBTExfVFJBQ0VQT0lOVCB8IF9USUZfU1lTQ0FMTF9BVURJVCB8IFwK
PiArICAgICAgICBfVElGX1NFQ0NPTVAgKQo+Cj4gICNlbmRpZiAvKiBfQVNNX1JJU0NWX1RIUkVB
RF9JTkZPX0ggKi8KPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNjdi9rZXJuZWwvZW50cnkuUyBiL2Fy
Y2gvcmlzY3Yva2VybmVsL2VudHJ5LlMKPiBpbmRleCBiYzdhNTZlMWNhNmYuLjBiYmVkZmEzZTQ3
ZCAxMDA2NDQKPiAtLS0gYS9hcmNoL3Jpc2N2L2tlcm5lbC9lbnRyeS5TCj4gKysrIGIvYXJjaC9y
aXNjdi9rZXJuZWwvZW50cnkuUwo+IEBAIC0yMDMsOCArMjAzLDI1IEBAIGNoZWNrX3N5c2NhbGxf
bnI6Cj4gICAgICAgICAvKiBDaGVjayB0byBtYWtlIHN1cmUgd2UgZG9uJ3QganVtcCB0byBhIGJv
Z3VzIHN5c2NhbGwgbnVtYmVyLiAqLwo+ICAgICAgICAgbGkgdDAsIF9fTlJfc3lzY2FsbHMKPiAg
ICAgICAgIGxhIHMwLCBzeXNfbmlfc3lzY2FsbAo+IC0gICAgICAgLyogU3lzY2FsbCBudW1iZXIg
aGVsZCBpbiBhNyAqLwo+IC0gICAgICAgYmdldSBhNywgdDAsIDFmCj4gKyAgICAgICAvKgo+ICsg
ICAgICAgICogVGhlIHRyYWNlciBjYW4gY2hhbmdlIHN5c2NhbGwgbnVtYmVyIHRvIHZhbGlkL2lu
dmFsaWQgdmFsdWUuCj4gKyAgICAgICAgKiBXZSB1c2Ugc3lzY2FsbF9zZXRfbnIgaGVscGVyIGlu
IHN5c2NhbGxfdHJhY2VfZW50ZXIgdGh1cyB3ZQo+ICsgICAgICAgICogY2Fubm90IHRydXN0IHRo
ZSBjdXJyZW50IHZhbHVlIGluIGE3IGFuZCBoYXZlIHRvIHJlbG9hZCBmcm9tCj4gKyAgICAgICAg
KiB0aGUgY3VycmVudCB0YXNrIHB0X3JlZ3MuCj4gKyAgICAgICAgKi8KPiArICAgICAgIFJFR19M
IGE3LCBQVF9BNyhzcCkKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBTeXNjYWxsIG51bWJlciBo
ZWxkIGluIGE3Lgo+ICsgICAgICAgICogSWYgc3lzY2FsbCBudW1iZXIgaXMgYWJvdmUgYWxsb3dl
ZCB2YWx1ZSwgcmVkaXJlY3QgdG8gbmlfc3lzY2FsbC4KPiArICAgICAgICAqLwo+ICsgICAgICAg
YmdlIGE3LCB0MCwgMWYKPiArICAgICAgIC8qCj4gKyAgICAgICAgKiBDaGVjayBpZiBzeXNjYWxs
IGlzIHJlamVjdGVkIGJ5IHRyYWNlciBvciBzZWNjb21wLCBpLmUuLCBhNyA9PSAtMS4KPiArICAg
ICAgICAqIElmIHllcywgd2UgcHJldGVuZCBpdCB3YXMgZXhlY3V0ZWQuCj4gKyAgICAgICAgKi8K
PiArICAgICAgIGxpIHQxLCAtMQo+ICsgICAgICAgYmVxIGE3LCB0MSwgcmV0X2Zyb21fc3lzY2Fs
bF9yZWplY3RlZAo+ICsgICAgICAgLyogQ2FsbCBzeXNjYWxsICovCj4gICAgICAgICBsYSBzMCwg
c3lzX2NhbGxfdGFibGUKPiAgICAgICAgIHNsbGkgdDAsIGE3LCBSSVNDVl9MR1BUUgo+ICAgICAg
ICAgYWRkIHMwLCBzMCwgdDAKPiBAQCAtMjE1LDYgKzIzMiwxMiBAQCBjaGVja19zeXNjYWxsX25y
Ogo+ICByZXRfZnJvbV9zeXNjYWxsOgo+ICAgICAgICAgLyogU2V0IHVzZXIgYTAgdG8ga2VybmVs
IGEwICovCj4gICAgICAgICBSRUdfUyBhMCwgUFRfQTAoc3ApCj4gKyAgICAgICAvKgo+ICsgICAg
ICAgICogV2UgZGlkbid0IGV4ZWN1dGUgdGhlIGFjdHVhbCBzeXNjYWxsLgo+ICsgICAgICAgICog
U2VjY29tcCBhbHJlYWR5IHNldCByZXR1cm4gdmFsdWUgZm9yIHRoZSBjdXJyZW50IHRhc2sgcHRf
cmVncy4KPiArICAgICAgICAqIChJZiBpdCB3YXMgY29uZmlndXJlZCB3aXRoIFNFQ0NPTVBfUkVU
X0VSUk5PL1RSQUNFKQo+ICsgICAgICAgICovCj4gK3JldF9mcm9tX3N5c2NhbGxfcmVqZWN0ZWQ6
Cj4gICAgICAgICAvKiBUcmFjZSBzeXNjYWxscywgYnV0IG9ubHkgaWYgcmVxdWVzdGVkIGJ5IHRo
ZSB1c2VyLiAqLwo+ICAgICAgICAgUkVHX0wgdDAsIFRBU0tfVElfRkxBR1ModHApCj4gICAgICAg
ICBhbmRpIHQwLCB0MCwgX1RJRl9TWVNDQUxMX1dPUksKPiBkaWZmIC0tZ2l0IGEvYXJjaC9yaXNj
di9rZXJuZWwvcHRyYWNlLmMgYi9hcmNoL3Jpc2N2L2tlcm5lbC9wdHJhY2UuYwo+IGluZGV4IDM2
ODc1MTQzODM2Ni4uNjNlNDdjOWY4NWYwIDEwMDY0NAo+IC0tLSBhL2FyY2gvcmlzY3Yva2VybmVs
L3B0cmFjZS5jCj4gKysrIGIvYXJjaC9yaXNjdi9rZXJuZWwvcHRyYWNlLmMKPiBAQCAtMTU0LDYg
KzE1NCwxNiBAQCB2b2lkIGRvX3N5c2NhbGxfdHJhY2VfZW50ZXIoc3RydWN0IHB0X3JlZ3MgKnJl
Z3MpCj4gICAgICAgICAgICAgICAgIGlmICh0cmFjZWhvb2tfcmVwb3J0X3N5c2NhbGxfZW50cnko
cmVncykpCj4gICAgICAgICAgICAgICAgICAgICAgICAgc3lzY2FsbF9zZXRfbnIoY3VycmVudCwg
cmVncywgLTEpOwo+Cj4gKyAgICAgICAvKgo+ICsgICAgICAgICogRG8gdGhlIHNlY3VyZSBjb21w
dXRpbmcgYWZ0ZXIgcHRyYWNlOyBmYWlsdXJlcyBzaG91bGQgYmUgZmFzdC4KPiArICAgICAgICAq
IElmIHRoaXMgZmFpbHMgd2UgbWlnaHQgaGF2ZSByZXR1cm4gdmFsdWUgaW4gYTAgZnJvbSBzZWNj
b21wCj4gKyAgICAgICAgKiAodmlhIFNFQ0NPTVBfUkVUX0VSUk5PL1RSQUNFKS4KPiArICAgICAg
ICAqLwo+ICsgICAgICAgaWYgKHNlY3VyZV9jb21wdXRpbmcoTlVMTCkgPT0gLTEpIHsKPiArICAg
ICAgICAgICAgICAgc3lzY2FsbF9zZXRfbnIoY3VycmVudCwgcmVncywgLTEpOwo+ICsgICAgICAg
ICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9Cj4gKwo+ICAjaWZkZWYgQ09ORklHX0hBVkVfU1lT
Q0FMTF9UUkFDRVBPSU5UUwo+ICAgICAgICAgaWYgKHRlc3RfdGhyZWFkX2ZsYWcoVElGX1NZU0NB
TExfVFJBQ0VQT0lOVCkpCj4gICAgICAgICAgICAgICAgIHRyYWNlX3N5c19lbnRlcihyZWdzLCBz
eXNjYWxsX2dldF9ucihjdXJyZW50LCByZWdzKSk7Cj4gZGlmZiAtLWdpdCBhL3Rvb2xzL3Rlc3Rp
bmcvc2VsZnRlc3RzL3NlY2NvbXAvc2VjY29tcF9icGYuYyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRl
c3RzL3NlY2NvbXAvc2VjY29tcF9icGYuYwo+IGluZGV4IDZlZjdmMTZjNGNmNS4uNDkyZTBhZGFk
OWQzIDEwMDY0NAo+IC0tLSBhL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL3NlY2NvbXAvc2VjY29t
cF9icGYuYwo+ICsrKyBiL3Rvb2xzL3Rlc3Rpbmcvc2VsZnRlc3RzL3NlY2NvbXAvc2VjY29tcF9i
cGYuYwo+IEBAIC0xMTIsNiArMTEyLDggQEAgc3RydWN0IHNlY2NvbXBfZGF0YSB7Cj4gICMgIGRl
ZmluZSBfX05SX3NlY2NvbXAgMzgzCj4gICMgZWxpZiBkZWZpbmVkKF9fYWFyY2g2NF9fKQo+ICAj
ICBkZWZpbmUgX19OUl9zZWNjb21wIDI3Nwo+ICsjIGVsaWYgZGVmaW5lZChfX3Jpc2N2KQo+ICsj
ICBkZWZpbmUgX19OUl9zZWNjb21wIDI3Nwo+ICAjIGVsaWYgZGVmaW5lZChfX2hwcGFfXykKPiAg
IyAgZGVmaW5lIF9fTlJfc2VjY29tcCAzMzgKPiAgIyBlbGlmIGRlZmluZWQoX19wb3dlcnBjX18p
Cj4gQEAgLTE1ODIsNiArMTU4NCwxMCBAQCBURVNUX0YoVFJBQ0VfcG9rZSwgZ2V0cGlkX3J1bnNf
bm9ybWFsbHkpCj4gICMgZGVmaW5lIEFSQ0hfUkVHUyAgICAgc3RydWN0IHVzZXJfcHRfcmVncwo+
ICAjIGRlZmluZSBTWVNDQUxMX05VTSAgIHJlZ3NbOF0KPiAgIyBkZWZpbmUgU1lTQ0FMTF9SRVQg
ICByZWdzWzBdCj4gKyNlbGlmIGRlZmluZWQoX19yaXNjdikgJiYgX19yaXNjdl94bGVuID09IDY0
Cj4gKyMgZGVmaW5lIEFSQ0hfUkVHUyAgICAgc3RydWN0IHVzZXJfcmVnc19zdHJ1Y3QKPiArIyBk
ZWZpbmUgU1lTQ0FMTF9OVU0gICBhNwo+ICsjIGRlZmluZSBTWVNDQUxMX1JFVCAgIGEwCj4gICNl
bGlmIGRlZmluZWQoX19ocHBhX18pCj4gICMgZGVmaW5lIEFSQ0hfUkVHUyAgICAgc3RydWN0IHVz
ZXJfcmVnc19zdHJ1Y3QKPiAgIyBkZWZpbmUgU1lTQ0FMTF9OVU0gICBnclsyMF0KPiBAQCAtMTY3
MSw3ICsxNjc3LDcgQEAgdm9pZCBjaGFuZ2Vfc3lzY2FsbChzdHJ1Y3QgX190ZXN0X21ldGFkYXRh
ICpfbWV0YWRhdGEsCj4gICAgICAgICBFWFBFQ1RfRVEoMCwgcmV0KSB7fQo+Cj4gICNpZiBkZWZp
bmVkKF9feDg2XzY0X18pIHx8IGRlZmluZWQoX19pMzg2X18pIHx8IGRlZmluZWQoX19wb3dlcnBj
X18pIHx8IFwKPiAtICAgIGRlZmluZWQoX19zMzkwX18pIHx8IGRlZmluZWQoX19ocHBhX18pCj4g
KyAgICBkZWZpbmVkKF9fczM5MF9fKSB8fCBkZWZpbmVkKF9faHBwYV9fKSB8fCBkZWZpbmVkKF9f
cmlzY3YpCj4gICAgICAgICB7Cj4gICAgICAgICAgICAgICAgIHJlZ3MuU1lTQ0FMTF9OVU0gPSBz
eXNjYWxsOwo+ICAgICAgICAgfQo+IC0tCj4gMi4yMS4wCj4KCktlcm5lbCBzZWxmdGVzdHMgcmVz
dWx0czoKCuKenCB1bmFtZSAtYQpMaW51eCBmZWRvcmEtdW5sZWFzaGVkIDUuMi4wLXJjNy0zMDE1
OS1nMmQwNzJkNC1kaXJ0eSAjMyBTTVAgVGh1IEp1bCA0CjIwOjE4OjIxIC0wMyAyMDE5IHJpc2N2
NjQgcmlzY3Y2NCByaXNjdjY0IEdOVS9MaW51eAoK4p6cIHN1ZG8gLi9zZWNjb21wX2JwZgpbPT09
PT09PT09PV0gUnVubmluZyA3NCB0ZXN0cyBmcm9tIDEgdGVzdCBjYXNlcy4KWyBSVU4gICAgICBd
IGdsb2JhbC5tb2RlX3N0cmljdF9zdXBwb3J0ClsgICAgICAgT0sgXSBnbG9iYWwubW9kZV9zdHJp
Y3Rfc3VwcG9ydApbIFJVTiAgICAgIF0gZ2xvYmFsLm1vZGVfc3RyaWN0X2Nhbm5vdF9jYWxsX3By
Y3RsClsgICAgICAgT0sgXSBnbG9iYWwubW9kZV9zdHJpY3RfY2Fubm90X2NhbGxfcHJjdGwKWyBS
VU4gICAgICBdIGdsb2JhbC5ub19uZXdfcHJpdnNfc3VwcG9ydApbICAgICAgIE9LIF0gZ2xvYmFs
Lm5vX25ld19wcml2c19zdXBwb3J0ClsgUlVOICAgICAgXSBnbG9iYWwubW9kZV9maWx0ZXJfc3Vw
cG9ydApbICAgICAgIE9LIF0gZ2xvYmFsLm1vZGVfZmlsdGVyX3N1cHBvcnQKWyBSVU4gICAgICBd
IGdsb2JhbC5tb2RlX2ZpbHRlcl93aXRob3V0X25ucApbICAgICAgIE9LIF0gZ2xvYmFsLm1vZGVf
ZmlsdGVyX3dpdGhvdXRfbm5wClsgUlVOICAgICAgXSBnbG9iYWwuZmlsdGVyX3NpemVfbGltaXRz
ClsgICAgICAgT0sgXSBnbG9iYWwuZmlsdGVyX3NpemVfbGltaXRzClsgUlVOICAgICAgXSBnbG9i
YWwuZmlsdGVyX2NoYWluX2xpbWl0cwpbICAgICAgIE9LIF0gZ2xvYmFsLmZpbHRlcl9jaGFpbl9s
aW1pdHMKWyBSVU4gICAgICBdIGdsb2JhbC5tb2RlX2ZpbHRlcl9jYW5ub3RfbW92ZV90b19zdHJp
Y3QKWyAgICAgICBPSyBdIGdsb2JhbC5tb2RlX2ZpbHRlcl9jYW5ub3RfbW92ZV90b19zdHJpY3QK
WyBSVU4gICAgICBdIGdsb2JhbC5tb2RlX2ZpbHRlcl9nZXRfc2VjY29tcApbICAgICAgIE9LIF0g
Z2xvYmFsLm1vZGVfZmlsdGVyX2dldF9zZWNjb21wClsgUlVOICAgICAgXSBnbG9iYWwuQUxMT1df
YWxsClsgICAgICAgT0sgXSBnbG9iYWwuQUxMT1dfYWxsClsgUlVOICAgICAgXSBnbG9iYWwuZW1w
dHlfcHJvZwpbICAgICAgIE9LIF0gZ2xvYmFsLmVtcHR5X3Byb2cKWyBSVU4gICAgICBdIGdsb2Jh
bC5sb2dfYWxsClsgICAgICAgT0sgXSBnbG9iYWwubG9nX2FsbApbIFJVTiAgICAgIF0gZ2xvYmFs
LnVua25vd25fcmV0X2lzX2tpbGxfaW5zaWRlClsgICAgICAgT0sgXSBnbG9iYWwudW5rbm93bl9y
ZXRfaXNfa2lsbF9pbnNpZGUKWyBSVU4gICAgICBdIGdsb2JhbC51bmtub3duX3JldF9pc19raWxs
X2Fib3ZlX2FsbG93ClsgICAgICAgT0sgXSBnbG9iYWwudW5rbm93bl9yZXRfaXNfa2lsbF9hYm92
ZV9hbGxvdwpbIFJVTiAgICAgIF0gZ2xvYmFsLktJTExfYWxsClsgICAgICAgT0sgXSBnbG9iYWwu
S0lMTF9hbGwKWyBSVU4gICAgICBdIGdsb2JhbC5LSUxMX29uZQpbICAgICAgIE9LIF0gZ2xvYmFs
LktJTExfb25lClsgUlVOICAgICAgXSBnbG9iYWwuS0lMTF9vbmVfYXJnX29uZQpbICAgICAgIE9L
IF0gZ2xvYmFsLktJTExfb25lX2FyZ19vbmUKWyBSVU4gICAgICBdIGdsb2JhbC5LSUxMX29uZV9h
cmdfc2l4ClsgICAgICAgT0sgXSBnbG9iYWwuS0lMTF9vbmVfYXJnX3NpeApbIFJVTiAgICAgIF0g
Z2xvYmFsLktJTExfdGhyZWFkClsgICAgICAgT0sgXSBnbG9iYWwuS0lMTF90aHJlYWQKWyBSVU4g
ICAgICBdIGdsb2JhbC5LSUxMX3Byb2Nlc3MKWyAgICAgICBPSyBdIGdsb2JhbC5LSUxMX3Byb2Nl
c3MKWyBSVU4gICAgICBdIGdsb2JhbC5hcmdfb3V0X29mX3JhbmdlClsgICAgICAgT0sgXSBnbG9i
YWwuYXJnX291dF9vZl9yYW5nZQpbIFJVTiAgICAgIF0gZ2xvYmFsLkVSUk5PX3ZhbGlkClsgICAg
ICAgT0sgXSBnbG9iYWwuRVJSTk9fdmFsaWQKWyBSVU4gICAgICBdIGdsb2JhbC5FUlJOT196ZXJv
ClsgICAgICAgT0sgXSBnbG9iYWwuRVJSTk9femVybwpbIFJVTiAgICAgIF0gZ2xvYmFsLkVSUk5P
X2NhcHBlZApbICAgICAgIE9LIF0gZ2xvYmFsLkVSUk5PX2NhcHBlZApbIFJVTiAgICAgIF0gZ2xv
YmFsLkVSUk5PX29yZGVyClsgICAgICAgT0sgXSBnbG9iYWwuRVJSTk9fb3JkZXIKWyBSVU4gICAg
ICBdIFRSQVAuZGZsClsgICAgICAgT0sgXSBUUkFQLmRmbApbIFJVTiAgICAgIF0gVFJBUC5pZ24K
WyAgICAgICBPSyBdIFRSQVAuaWduClsgUlVOICAgICAgXSBUUkFQLmhhbmRsZXIKWyAgICAgICBP
SyBdIFRSQVAuaGFuZGxlcgpbIFJVTiAgICAgIF0gcHJlY2VkZW5jZS5hbGxvd19vawpbICAgICAg
IE9LIF0gcHJlY2VkZW5jZS5hbGxvd19vawpbIFJVTiAgICAgIF0gcHJlY2VkZW5jZS5raWxsX2lz
X2hpZ2hlc3QKWyAgICAgICBPSyBdIHByZWNlZGVuY2Uua2lsbF9pc19oaWdoZXN0ClsgUlVOICAg
ICAgXSBwcmVjZWRlbmNlLmtpbGxfaXNfaGlnaGVzdF9pbl9hbnlfb3JkZXIKWyAgICAgICBPSyBd
IHByZWNlZGVuY2Uua2lsbF9pc19oaWdoZXN0X2luX2FueV9vcmRlcgpbIFJVTiAgICAgIF0gcHJl
Y2VkZW5jZS50cmFwX2lzX3NlY29uZApbICAgICAgIE9LIF0gcHJlY2VkZW5jZS50cmFwX2lzX3Nl
Y29uZApbIFJVTiAgICAgIF0gcHJlY2VkZW5jZS50cmFwX2lzX3NlY29uZF9pbl9hbnlfb3JkZXIK
WyAgICAgICBPSyBdIHByZWNlZGVuY2UudHJhcF9pc19zZWNvbmRfaW5fYW55X29yZGVyClsgUlVO
ICAgICAgXSBwcmVjZWRlbmNlLmVycm5vX2lzX3RoaXJkClsgICAgICAgT0sgXSBwcmVjZWRlbmNl
LmVycm5vX2lzX3RoaXJkClsgUlVOICAgICAgXSBwcmVjZWRlbmNlLmVycm5vX2lzX3RoaXJkX2lu
X2FueV9vcmRlcgpbICAgICAgIE9LIF0gcHJlY2VkZW5jZS5lcnJub19pc190aGlyZF9pbl9hbnlf
b3JkZXIKWyBSVU4gICAgICBdIHByZWNlZGVuY2UudHJhY2VfaXNfZm91cnRoClsgICAgICAgT0sg
XSBwcmVjZWRlbmNlLnRyYWNlX2lzX2ZvdXJ0aApbIFJVTiAgICAgIF0gcHJlY2VkZW5jZS50cmFj
ZV9pc19mb3VydGhfaW5fYW55X29yZGVyClsgICAgICAgT0sgXSBwcmVjZWRlbmNlLnRyYWNlX2lz
X2ZvdXJ0aF9pbl9hbnlfb3JkZXIKWyBSVU4gICAgICBdIHByZWNlZGVuY2UubG9nX2lzX2ZpZnRo
ClsgICAgICAgT0sgXSBwcmVjZWRlbmNlLmxvZ19pc19maWZ0aApbIFJVTiAgICAgIF0gcHJlY2Vk
ZW5jZS5sb2dfaXNfZmlmdGhfaW5fYW55X29yZGVyClsgICAgICAgT0sgXSBwcmVjZWRlbmNlLmxv
Z19pc19maWZ0aF9pbl9hbnlfb3JkZXIKWyBSVU4gICAgICBdIFRSQUNFX3Bva2UucmVhZF9oYXNf
c2lkZV9lZmZlY3RzClsgICAgICAgT0sgXSBUUkFDRV9wb2tlLnJlYWRfaGFzX3NpZGVfZWZmZWN0
cwpbIFJVTiAgICAgIF0gVFJBQ0VfcG9rZS5nZXRwaWRfcnVuc19ub3JtYWxseQpbICAgICAgIE9L
IF0gVFJBQ0VfcG9rZS5nZXRwaWRfcnVuc19ub3JtYWxseQpbIFJVTiAgICAgIF0gVFJBQ0Vfc3lz
Y2FsbC5wdHJhY2Vfc3lzY2FsbF9yZWRpcmVjdGVkClsgICAgICAgT0sgXSBUUkFDRV9zeXNjYWxs
LnB0cmFjZV9zeXNjYWxsX3JlZGlyZWN0ZWQKWyBSVU4gICAgICBdIFRSQUNFX3N5c2NhbGwucHRy
YWNlX3N5c2NhbGxfZXJybm8KWyAgICAgICBPSyBdIFRSQUNFX3N5c2NhbGwucHRyYWNlX3N5c2Nh
bGxfZXJybm8KWyBSVU4gICAgICBdIFRSQUNFX3N5c2NhbGwucHRyYWNlX3N5c2NhbGxfZmFrZWQK
WyAgICAgICBPSyBdIFRSQUNFX3N5c2NhbGwucHRyYWNlX3N5c2NhbGxfZmFrZWQKWyBSVU4gICAg
ICBdIFRSQUNFX3N5c2NhbGwuc3lzY2FsbF9hbGxvd2VkClsgICAgICAgT0sgXSBUUkFDRV9zeXNj
YWxsLnN5c2NhbGxfYWxsb3dlZApbIFJVTiAgICAgIF0gVFJBQ0Vfc3lzY2FsbC5zeXNjYWxsX3Jl
ZGlyZWN0ZWQKWyAgICAgICBPSyBdIFRSQUNFX3N5c2NhbGwuc3lzY2FsbF9yZWRpcmVjdGVkClsg
UlVOICAgICAgXSBUUkFDRV9zeXNjYWxsLnN5c2NhbGxfZXJybm8KWyAgICAgICBPSyBdIFRSQUNF
X3N5c2NhbGwuc3lzY2FsbF9lcnJubwpbIFJVTiAgICAgIF0gVFJBQ0Vfc3lzY2FsbC5zeXNjYWxs
X2Zha2VkClsgICAgICAgT0sgXSBUUkFDRV9zeXNjYWxsLnN5c2NhbGxfZmFrZWQKWyBSVU4gICAg
ICBdIFRSQUNFX3N5c2NhbGwuc2tpcF9hZnRlcl9SRVRfVFJBQ0UKWyAgICAgICBPSyBdIFRSQUNF
X3N5c2NhbGwuc2tpcF9hZnRlcl9SRVRfVFJBQ0UKWyBSVU4gICAgICBdIFRSQUNFX3N5c2NhbGwu
a2lsbF9hZnRlcl9SRVRfVFJBQ0UKWyAgICAgICBPSyBdIFRSQUNFX3N5c2NhbGwua2lsbF9hZnRl
cl9SRVRfVFJBQ0UKWyBSVU4gICAgICBdIFRSQUNFX3N5c2NhbGwuc2tpcF9hZnRlcl9wdHJhY2UK
WyAgICAgICBPSyBdIFRSQUNFX3N5c2NhbGwuc2tpcF9hZnRlcl9wdHJhY2UKWyBSVU4gICAgICBd
IFRSQUNFX3N5c2NhbGwua2lsbF9hZnRlcl9wdHJhY2UKWyAgICAgICBPSyBdIFRSQUNFX3N5c2Nh
bGwua2lsbF9hZnRlcl9wdHJhY2UKWyBSVU4gICAgICBdIGdsb2JhbC5zZWNjb21wX3N5c2NhbGwK
WyAgICAgICBPSyBdIGdsb2JhbC5zZWNjb21wX3N5c2NhbGwKWyBSVU4gICAgICBdIGdsb2JhbC5z
ZWNjb21wX3N5c2NhbGxfbW9kZV9sb2NrClsgICAgICAgT0sgXSBnbG9iYWwuc2VjY29tcF9zeXNj
YWxsX21vZGVfbG9jawpbIFJVTiAgICAgIF0gZ2xvYmFsLmRldGVjdF9zZWNjb21wX2ZpbHRlcl9m
bGFncwpbICAgICAgIE9LIF0gZ2xvYmFsLmRldGVjdF9zZWNjb21wX2ZpbHRlcl9mbGFncwpbIFJV
TiAgICAgIF0gZ2xvYmFsLlRTWU5DX2ZpcnN0ClsgICAgICAgT0sgXSBnbG9iYWwuVFNZTkNfZmly
c3QKWyBSVU4gICAgICBdIFRTWU5DLnNpYmxpbmdzX2ZhaWxfcHJjdGwKWyAgICAgICBPSyBdIFRT
WU5DLnNpYmxpbmdzX2ZhaWxfcHJjdGwKWyBSVU4gICAgICBdIFRTWU5DLnR3b19zaWJsaW5nc193
aXRoX2FuY2VzdG9yClsgICAgICAgT0sgXSBUU1lOQy50d29fc2libGluZ3Nfd2l0aF9hbmNlc3Rv
cgpbIFJVTiAgICAgIF0gVFNZTkMudHdvX3NpYmxpbmdfd2FudF9ubnAKWyAgICAgICBPSyBdIFRT
WU5DLnR3b19zaWJsaW5nX3dhbnRfbm5wClsgUlVOICAgICAgXSBUU1lOQy50d29fc2libGluZ3Nf
d2l0aF9ub19maWx0ZXIKWyAgICAgICBPSyBdIFRTWU5DLnR3b19zaWJsaW5nc193aXRoX25vX2Zp
bHRlcgpbIFJVTiAgICAgIF0gVFNZTkMudHdvX3NpYmxpbmdzX3dpdGhfb25lX2RpdmVyZ2VuY2UK
WyAgICAgICBPSyBdIFRTWU5DLnR3b19zaWJsaW5nc193aXRoX29uZV9kaXZlcmdlbmNlClsgUlVO
ICAgICAgXSBUU1lOQy50d29fc2libGluZ3Nfbm90X3VuZGVyX2ZpbHRlcgpbICAgICAgIE9LIF0g
VFNZTkMudHdvX3NpYmxpbmdzX25vdF91bmRlcl9maWx0ZXIKWyBSVU4gICAgICBdIGdsb2JhbC5z
eXNjYWxsX3Jlc3RhcnQKWyAgICAgICBPSyBdIGdsb2JhbC5zeXNjYWxsX3Jlc3RhcnQKWyBSVU4g
ICAgICBdIGdsb2JhbC5maWx0ZXJfZmxhZ19sb2cKWyAgICAgICBPSyBdIGdsb2JhbC5maWx0ZXJf
ZmxhZ19sb2cKWyBSVU4gICAgICBdIGdsb2JhbC5nZXRfYWN0aW9uX2F2YWlsClsgICAgICAgT0sg
XSBnbG9iYWwuZ2V0X2FjdGlvbl9hdmFpbApbIFJVTiAgICAgIF0gZ2xvYmFsLmdldF9tZXRhZGF0
YQpbICAgICAgIE9LIF0gZ2xvYmFsLmdldF9tZXRhZGF0YQpbIFJVTiAgICAgIF0gZ2xvYmFsLnVz
ZXJfbm90aWZpY2F0aW9uX2Jhc2ljClsgICAgICAgT0sgXSBnbG9iYWwudXNlcl9ub3RpZmljYXRp
b25fYmFzaWMKWyBSVU4gICAgICBdIGdsb2JhbC51c2VyX25vdGlmaWNhdGlvbl9raWxsX2luX21p
ZGRsZQpbICAgICAgIE9LIF0gZ2xvYmFsLnVzZXJfbm90aWZpY2F0aW9uX2tpbGxfaW5fbWlkZGxl
ClsgUlVOICAgICAgXSBnbG9iYWwudXNlcl9ub3RpZmljYXRpb25fc2lnbmFsClsxXSAgICA1OTUx
IGFsYXJtICAgICAgc3VkbyAuL3NlY2NvbXBfYnBmCgpjYXJsb3NlZHAgaW4gfiBhdCBmZWRvcmEt
dW5sZWFzaGVkCuKenCBzdWRvIC4vc2VjY29tcF9iZW5jaG1hcmsKQ2FsaWJyYXRpbmcgcmVhc29u
YWJsZSBzYW1wbGUgc2l6ZS4uLgoxNTY0NTg0NDQ4Ljk2NDUzODc5MCAtIDE1NjQ1ODQ0NDguOTY0
NTI5Njg3ID0gOTEwMwoxNTY0NTg0NDQ4Ljk2NDU4ODg1OSAtIDE1NjQ1ODQ0NDguOTY0NTc1MjA0
ID0gMTM2NTUKMTU2NDU4NDQ0OC45NjQ2MzEzNDIgLSAxNTY0NTg0NDQ4Ljk2NDYwNDc5MCA9IDI2
NTUyCjE1NjQ1ODQ0NDguOTY0NzEwMjM5IC0gMTU2NDU4NDQ0OC45NjQ2NDQ5OTcgPSA2NTI0Mgox
NTY0NTg0NDQ4Ljk2NDg0MjIzOSAtIDE1NjQ1ODQ0NDguOTY0NzI2OTI4ID0gMTE1MzExCjE1NjQ1
ODQ0NDguOTY1MDcyODU5IC0gMTU2NDU4NDQ0OC45NjQ4NTc0MTEgPSAyMTU0NDgKMTU2NDU4NDQ0
OC45NjU1MTM2MTggLSAxNTY0NTg0NDQ4Ljk2NTA4OTU0OSA9IDQyNDA2OQoxNTY0NTg0NDQ4Ljk2
NjQxNzg5NCAtIDE1NjQ1ODQ0NDguOTY1NTMyNTg0ID0gODg1MzEwCjE1NjQ1ODQ0NDguOTY4Mjg2
Mzc3IC0gMTU2NDU4NDQ0OC45NjY0NDM2ODcgPSAxODQyNjkwCjE1NjQ1ODQ0NDguOTcxNjY3NTQ5
IC0gMTU2NDU4NDQ0OC45NjgzMTQ0NDYgPSAzMzUzMTAzCjE1NjQ1ODQ0NDguOTc4Mjg4NzkwIC0g
MTU2NDU4NDQ0OC45NzE2OTQxMDEgPSA2NTk0Njg5CjE1NjQ1ODQ0NDguOTkxODAzNjE4IC0gMTU2
NDU4NDQ0OC45NzgzMTMwNjYgPSAxMzQ5MDU1MgoxNTY0NTg0NDQ5LjAxNzY5MjMwOCAtIDE1NjQ1
ODQ0NDguOTkxODM2MjM5ID0gMjU4NTYwNjkKMTU2NDU4NDQ0OS4wNjk2NTE3NTYgLSAxNTY0NTg0
NDQ5LjAxNzcxMzU0OSA9IDUxOTM4MjA3CjE1NjQ1ODQ0NDkuMTczMTEwOTI4IC0gMTU2NDU4NDQ0
OS4wNjk2NzM3NTYgPSAxMDM0MzcxNzIKMTU2NDU4NDQ0OS4zODAwMDEyMDQgLSAxNTY0NTg0NDQ5
LjE3MzEzMjkyOCA9IDIwNjg2ODI3NgoxNTY0NTg0NDQ5Ljc5Mzg1NzYxOCAtIDE1NjQ1ODQ0NDku
MzgwMDQxNDExID0gNDEzODE2MjA3CjE1NjQ1ODQ0NTAuNjI1MzY3MzQyIC0gMTU2NDU4NDQ0OS43
OTM4OTg1ODQgPSA4MzE0Njg3NTgKMTU2NDU4NDQ1Mi4yOTk1Mjk0MTEgLSAxNTY0NTg0NDUwLjYy
NTQyNjUxNCA9IDE2NzQxMDI4OTcKMTU2NDU4NDQ1NS42NjU5MzgzMDcgLSAxNTY0NTg0NDUyLjI5
OTU5MjM3NiA9IDMzNjYzNDU5MzEKMTU2NDU4NDQ2Mi4zMzE3Nzc0NzkgLSAxNTY0NTg0NDU1LjY2
NTk3Mzk2MiA9IDY2NjU4MDM1MTcKQmVuY2htYXJraW5nIDMzNTU0NDMyIHNhbXBsZXMuLi4KMTgu
MTA3ODgyNzQzIC0gMTIuMDc1NjQxMzcxID0gNjAzMjI0MTM3MgpnZXRwaWQgbmF0aXZlOiAxNzkg
bnMKMzQuNzIwNDEwMzMxIC0gMTguMTA3OTc4NjA1ID0gMTY2MTI0MzE3MjYKZ2V0cGlkIFJFVF9B
TExPVzogNDk1IG5zCkVzdGltYXRlZCBzZWNjb21wIG92ZXJoZWFkIHBlciBzeXNjYWxsOiAzMTYg
bgoKCi0tIApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkNhcmxvcyBF
ZHVhcmRvIGRlIFBhdWxhCm1lQGNhcmxvc2VkcC5jb20KaHR0cDovL2Nhcmxvc2VkcC5jb20KaHR0
cDovL3R3aXR0ZXIuY29tL2Nhcmxvc2VkcApMaW5rZWRpbgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1yaXNjdiBtYWlsaW5nIGxpc3QKbGludXgtcmlzY3ZAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJpc2N2Cg==
